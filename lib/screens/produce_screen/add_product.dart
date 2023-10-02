import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mloflow/constant.dart';
import 'package:mloflow/global_widget/app_icon.dart';
import 'package:mloflow/global_widget/custom_btn.dart';
import 'package:mloflow/models/add_product_model.dart';
import 'package:sizer/sizer.dart';
import 'package:http/http.dart' as http;

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({Key? key}) : super(key: key);
  static String routeName = "SignInScreen";

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  final _formKey = GlobalKey<FormState>();
  final productNameController = TextEditingController();
  final productDescriptionController = TextEditingController();
  final productPriceController = TextEditingController();
  final productStockController = TextEditingController();
  final productWeightController = TextEditingController();
  bool _isLoading = false;
  final List<FocusNode> _focusNodes = [
    FocusNode(),
    FocusNode(),
    FocusNode(),
    FocusNode(),
    FocusNode(),
  ];

  String _selectedValue = 'produce';
  List<String> listOfValue = ['produce', 'fish', 'poultry'];

  // File? _selectedImage;
  List<File?> _selectedImages = List.generate(4, (_) => null);

  Future<void> _pickImage(int index) async {
    final picker = ImagePicker();

    if (Platform.isIOS || Platform.isAndroid) {
      // Use the image picker for iOS and Android
      final pickedFile = await picker.pickImage(source: ImageSource.gallery);

      if (pickedFile != null) {
        setState(() {
          // _selectedImage = File(pickedFile.path);
          _selectedImages[index] = File(pickedFile.path);
        });
      }
    } else if (Platform.isMacOS) {
      final filePickerResult =
          await FilePicker.platform.pickFiles(type: FileType.image);
      if (filePickerResult != null && filePickerResult.files.isNotEmpty) {
        final filePath = filePickerResult.files.single.path;
        setState(() {
          // _selectedImage = File(filePath!);
          _selectedImages[index] = File(filePath!);
        });
      }
    }
  }

  Future<bool> _addProduct(AddProduct product, List<File?> images) async {
    setState(() {
      _isLoading = true;
    });

    final uri = Uri.parse('http://127.0.0.1:8000/products/');
    final request = http.MultipartRequest('POST', uri);

    List<String> imageKeys = [
      'imageOne',
      'imageTwo',
      'imageThree',
      'imageFour'
    ];

    for (int i = 0; i < images.length; i++) {
      final imageFile = images[i];
      if (imageFile != null && i < imageKeys.length) {
        request.files.add(
          http.MultipartFile(
            imageKeys[i], // Use the specified key name from the list
            imageFile.readAsBytes().asStream(),
            imageFile.lengthSync(),
            filename: 'product_image_$i.jpg',
          ),
        );
      }
    }

    // Add other form data
    request.fields['category'] = product.category;
    request.fields['name'] = product.productName;
    request.fields['description'] = product.productDescription;
    request.fields['price'] = product.productPrice.toString();
    request.fields['stock'] = product.productStock.toString();
    request.fields['weight'] = product.productWeight.toString();

    try {
      final response = await request.send();

      if (response.statusCode == 201) {
        setState(() {
          _isLoading = false;
        });
        if (kDebugMode) {
          print('Product added successfully!');
        }
        return true;
      } else {
        setState(() {
          _isLoading = false;
        });
        if (kDebugMode) {
          print('Product not added: ${response.statusCode}');
        }
        return false;
      }
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
      print('Error uploading product: $e');
      return false;
    }
  }

  @override
  void initState() {
    for (var node in _focusNodes) {
      node.addListener(() {
        setState(() {});
      });
    }
    super.initState();
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    productNameController.dispose();
    productDescriptionController.dispose();
    productPriceController.dispose();
    productStockController.dispose();
    productWeightController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Padding(
          padding: EdgeInsets.only(left: 4.w, right: 4.w),
          child: ScrollConfiguration(
            behavior:
                ScrollConfiguration.of(context).copyWith(scrollbars: false),
            child: Align(
              alignment: Alignment.center,
              child: ListView(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    padding: EdgeInsets.all(1.w),
                    child: Image.asset("assets/icons/logo.png"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Add your product',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.titleSmall),
                      InkWell(
                          onTap: (() => Navigator.pop(context)),
                          child: AppIcon(icon: Icons.close))
                    ],
                  ),
                  kSizedBox2,
                  kSizedBox2,
                  Form(
                    key: _formKey,
                    child: Column(children: [
                      // SizedBox(height: 35, width: 300, child: buildFirstNameField()),
                      kSizedBox2,
                      buildCategoryField(),
                      kSizedBox2,
                      buildProductNameField(),
                      kSizedBox2,
                      buildProductDescriptionField(),
                      kSizedBox2,
                      buildProductPriceField(),
                      kSizedBox2,
                      buildProductStockField(),
                      kSizedBox2,
                      buildProductWeightField(),
                      kSizedBox2,
                      Text("Add Images"),
                      kSizedBox2,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          for (int index = 0;
                              index < _selectedImages.length;
                              index++)
                            GestureDetector(
                              onTap: () {
                                _pickImage(index);
                              },
                              child: Container(
                                color: Colors.grey[300],
                                width: 80,
                                height: 80,
                                child: _selectedImages[index] != null
                                    ? Image.file(
                                        _selectedImages[index]!,
                                        fit: BoxFit.cover,
                                      )
                                    : Icon(Icons.add),
                              ),
                            ),
                        ],
                      ),
                      kSizedBox2,
                      CustomBtn(
                        onPress: () async {
                          if (_formKey.currentState!.validate()) {
                            final product = AddProduct(
                              _selectedValue,
                              productNameController.text,
                              productDescriptionController.text,
                              int.parse(productPriceController.text),
                              int.parse(productStockController.text),
                              int.parse(productWeightController.text),
                              _selectedImages[0],
                              _selectedImages[1],
                              _selectedImages[2],
                              _selectedImages[3],
                            );

                            final selectedImages = [
                              _selectedImages[0],
                              _selectedImages[1],
                              _selectedImages[2],
                              _selectedImages[3],
                            ];

                            // Call _registerUser and await its completion
                            final registrationResult =
                                await _addProduct(product, selectedImages);

                            if (registrationResult == true) {
                              // Registration was successful, navigate to the home screen
                              Navigator.pushNamed(context, '/home');
                            } else {
                              // Registration failed, handle it (e.g., show an error message)
                            }
                          }
                        },
                        title: _isLoading ? "Loading..." : "Add Product",
                      ),

                      kSizedBox2,
                      kSizedBox2,
                    ]),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  TextFormField buildProductNameField() {
    return TextFormField(
      focusNode: _focusNodes[0],
      controller: productNameController,
      textAlign: TextAlign.start,
      keyboardType: TextInputType.name,
      style: inputTextHintStyle,
      decoration: InputDecoration(
        labelText: "Product Name",
      ),
      validator: (value) {
        if (value!.length < 1) {
          return "Must be more than 4 characters";
        }
        return null;
      },
    );
  }

  TextFormField buildProductDescriptionField() {
    return TextFormField(
      focusNode: _focusNodes[1],
      controller: productDescriptionController,
      textAlign: TextAlign.start,
      keyboardType: TextInputType.name,
      style: inputTextHintStyle,
      decoration: InputDecoration(
        labelText: "Product Description",
      ),
      validator: (value) {
        if (value!.length < 1) {
          return "Must be more than 4 characters";
        }
        return null;
      },
    );
  }

  TextFormField buildProductWeightField() {
    return TextFormField(
      controller: productWeightController,
      focusNode: _focusNodes[2],
      textAlign: TextAlign.start,
      keyboardType: TextInputType.number,
      style: inputTextHintStyle,
      decoration: InputDecoration(
        labelText: "Product Weight",
      ),
      validator: (value) {
        if (value!.length < 1) {
          return "Must be more than 1 characters";
        }
        return null;
      },
    );
  }

  TextFormField buildProductStockField() {
    return TextFormField(
      controller: productStockController,
      focusNode: _focusNodes[3],
      textAlign: TextAlign.start,
      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly
      ],
      style: inputTextHintStyle,
      decoration: InputDecoration(
        labelText: "Product Stock",
      ),
      validator: (value) {
        if (value!.length < 1) {
          return "Must be more than 1 characters";
        }
        return null;
      },
    );
  }

  TextFormField buildProductPriceField() {
    return TextFormField(
      controller: productPriceController,
      focusNode: _focusNodes[4],
      textAlign: TextAlign.start,
      keyboardType: TextInputType.number,
      style: inputTextHintStyle,
      decoration: InputDecoration(
        labelText: "Product Price",
      ),
    );
  }

  DropdownButtonFormField buildCategoryField() {
    return DropdownButtonFormField(
      style: inputTextHintStyle,
      value: _selectedValue,
      hint: const Text(
        'choose one',
      ),
      items: listOfValue.map((String val) {
        return DropdownMenuItem(
          value: val,
          child: Text(
            val,
          ),
        );
      }).toList(),
      onChanged: (value) {
        setState(() {
          _selectedValue = value;
        });
      },
      onSaved: (value) {
        setState(() {
          _selectedValue = value;
        });
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Please choose the value from the dropdown";
        } else {
          return null;
        }
      },
    );
  }
}
