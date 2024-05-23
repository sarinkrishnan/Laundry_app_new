class Registor {
  String? userName;
  String? email;
  String? password;
  String? phoneNumber;

  Registor({this.userName, this.email, this.password, this.phoneNumber});

  Registor.fromJson(Map<String, dynamic> json) {
    userName = json['userName'];
    email = json['email'];
    password = json['password'];
    phoneNumber = json['phoneNumber'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userName'] = this.userName;
    data['email'] = this.email;
    data['password'] = this.password;
    data['phoneNumber'] = this.phoneNumber;
    return data;
  }
}
