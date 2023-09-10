class UserRegistration {
  final String firstName;
  final String lastName;
  final String phoneNumber;
  final String homeAddress;
  final String email;
  final String password;
  final String reTypePassword;
  final String category;

  UserRegistration(
      this.firstName,
      this.lastName,
      this.phoneNumber,
      this.homeAddress,
      this.email,
      this.password,
      this.reTypePassword,
      this.category);

  Map<String, dynamic> toJson() {
    return{
      "first_name": firstName,
      "surname": lastName,
      "phone": phoneNumber,
      "category": category,
      "home_address": homeAddress,
      "email": email,
      "password": password,
      "re_password": reTypePassword
    };
  }
}
