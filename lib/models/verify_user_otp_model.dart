class VerifyUserOtp {
  final String email;
  final int otp;

  VerifyUserOtp(
    this.email,
    this.otp,
  );

  Map<String, dynamic> toJson() {
    return {
      "email": email,
      "otp": otp,
    };
  }
}
