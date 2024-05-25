class Registor {
  final String userName;
  final String email;
  final String password;
  final int phoneNumber;
  final String id;
  final List<String> address;

  Registor({
    required this.userName,
    required this.email,
    required this.password,
    required this.phoneNumber,
    required this.id,
    required this.address,
  });

  factory Registor.fromJson(Map<String, dynamic> json) {
    return Registor(
      userName: json['userName'],
      email: json['email'],
      password: json['password'],
      phoneNumber: json['phoneNumber'],
      id: json['_id'],
      address: List<String>.from(json['address']),
    );
  }
}