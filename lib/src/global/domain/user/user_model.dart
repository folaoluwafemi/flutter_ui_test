class User {
  final String firstName, lastName, profilePhoto;

  const User({
    required this.firstName,
    required this.lastName,
    required this.profilePhoto,
  });

  Map<String, dynamic> toMap() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'profilePhoto': profilePhoto,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      firstName: map['firstName'],
      lastName: map['lastName'],
      profilePhoto: map['profilePhoto'],
    );
  }
}
