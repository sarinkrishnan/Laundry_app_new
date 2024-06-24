class userOtp {
  final String message;
  final String status;
  final String token;

  userOtp({
    required this.message,
    required this.status,
    required this.token,
  });

  factory userOtp.fromJson(Map<String, dynamic> json) {
    return userOtp(
      message: json["message"],
      status: json["status"],
      token: json["token"],
    );
  }
}
