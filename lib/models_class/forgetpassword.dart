class ReforgetPassword {
  final String message;
  final String status;
  final String id;
  final String otp;

  ReforgetPassword({
    required this.message,
    required this.status,
    required this.id,
    required this.otp,
  });

  factory ReforgetPassword.fromJson(Map<String, dynamic> json) {
    return ReforgetPassword(
      message: json["message"],
      status: json["status"],
      id: json["id"],
      otp: json["otp"],
    );
  }
}
