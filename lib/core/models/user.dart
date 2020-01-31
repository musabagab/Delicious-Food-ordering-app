class User {
  final String id;
  final String userName;
  final String email;
  final String phoneNumber;

  User({this.id, this.userName, this.email, this.phoneNumber});

  User.fromData(Map<String, dynamic> data)
      : id = data['id'],
        userName = data['userName'],
        email = data['email'],
        phoneNumber = data['phoneNumber'];

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userName': userName,
      'email': email,
      'phoneNumber': phoneNumber,
    };
  }
}
