class UserModel {
  UserModel(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.username,
      required this.email,
      required this.phoneNumber,
      required this.profilePicture});

  final String id;
  String firstName;
  String lastName;
  final String username;
  final String email;
  String phoneNumber;
  String profilePicture;

  Map<String, dynamic> toJson() {
    return {
      'FirstName': firstName,
      'LastName': lastName,
      'Username': username,
      'Email': email,
      'PhoneNumber': phoneNumber,
      'ProfilePicture': profilePicture,
    };
  }

  String get fullName => '$firstName $lastName';
  static List<String> nameParts(fullName) => fullName.split(' ');
  static String generateUsername(fullName) {
    List<String> nameParts = fullName.split(' ');
    String firstName = nameParts[0].toLowerCase();
    String lastName = nameParts.length > 1 ? nameParts[1].toLowerCase() : '';
    String camelCaseUsername = '$firstName$lastName';
    String usernameWithPrefix = 'cwt_$camelCaseUsername';
    return usernameWithPrefix;
  }
}
