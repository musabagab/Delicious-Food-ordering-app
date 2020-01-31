class User {
  final String id;
  final String fullName;
  final String email;
  final String phoneNumber;

  User({this.id, this.fullName, this.email, this.phoneNumber});

  User.fromData(Map<String, dynamic> data)
      : id = data['id'],
        fullName = data['fullName'],
        email = data['email'],
        phoneNumber = data['phoneNumber'];

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'fullName': fullName,
      'email': email,
      'phoneNumber': phoneNumber,
    };
  }
}
