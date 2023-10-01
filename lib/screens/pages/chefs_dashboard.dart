import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

class ChefDashboard extends StatefulWidget {
  const ChefDashboard({Key? key}) : super(key: key);

  @override
  State<ChefDashboard> createState() => _ChefDashboardState();
}

class _ChefDashboardState extends State<ChefDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(

            // Datatable widget that have the property columns and rows.
            columns: [
              // Set the name of the column
              DataColumn(
                label: Text('Request ID'),
              ),
              DataColumn(
                label: Text('First Name'),
              ),
              DataColumn(
                label: Text('Surname'),
              ),
              DataColumn(
                label: Text('Speciality'),
              ),
              DataColumn(
                label: Text('Occassion'),
              ),
              DataColumn(
                label: Text('Location'),
              ),
              DataColumn(
                label: Text('Start Date'),
              ),
              DataColumn(
                label: Text('End Date'),
              ),
              DataColumn(
                label: Text('Action'),
              ),
            ],
            rows: [
              // Set the values to the columns
              DataRow(cells: [
                DataCell(Text("1")),
                DataCell(Text("Alex")),
                DataCell(Text("Anderson")),
                DataCell(Text("Swahili Cuisine")),
                DataCell(Text("Wedding Reception")),
                DataCell(Text("Westlands")),
                DataCell(Text("15/09/23")),
                DataCell(Text("17/09/23")),
                DataCell(
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18),
                        child: Container(
                          child: ElevatedButton(
                            child: Text(
                              'Accept',
                              style: TextStyle(fontSize: 10),
                            ),
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(80, 20),
                              primary: Color(0xFFFBC24A),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18),
                        child: Container(
                          child: ElevatedButton(
                            child: Text(
                              'Deny',
                              style: TextStyle(fontSize: 10),
                            ),
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(80, 20),
                              primary: Color.fromARGB(255, 19, 19, 18),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
              DataRow(cells: [
                DataCell(Text("2")),
                DataCell(Text("John")),
                DataCell(Text("Anderson")),
                DataCell(Text("Swahili Cuisine")),
                DataCell(Text("Wedding Reception")),
                DataCell(Text("Westlands")),
                DataCell(Text("15/09/23")),
                DataCell(Text("17/09/23")),
                DataCell(
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18),
                        child: Container(
                          child: ElevatedButton(
                            child: Text(
                              'Accept',
                              style: TextStyle(fontSize: 10),
                            ),
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(80, 20),
                              primary: Color(0xFFFBC24A),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18),
                        child: Container(
                          child: ElevatedButton(
                            child: Text(
                              'Deny',
                              style: TextStyle(fontSize: 10),
                            ),
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(80, 20),
                              primary: Color.fromARGB(255, 19, 19, 18),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ]),
      ),
    );
  }
}
