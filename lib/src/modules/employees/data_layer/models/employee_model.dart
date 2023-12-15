import 'dart:convert';

class EmployeeModel {
  final int id;
  final String firstName;
  final String lastName;
  final String profilePictureUrl;

  EmployeeModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.profilePictureUrl,
  });

  factory EmployeeModel.test() {
    return EmployeeModel(
      id: 0,
      firstName: '',
      lastName: '',
      profilePictureUrl: '',
    );
  }

  EmployeeModel copyWith({
    int? id,
    String? firstName,
    String? lastName,
    String? profilePictureUrl,
  }) {
    return EmployeeModel(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      profilePictureUrl: profilePictureUrl ?? this.profilePictureUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'profilePictureUrl': profilePictureUrl,
    };
  }

  factory EmployeeModel.fromMap(Map<String, dynamic> map) {
    return EmployeeModel(
      id: map['id'] as int,
      firstName: map['firstName'] as String,
      lastName: map['lastName'] as String,
      profilePictureUrl: map['profilePictureUrl'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory EmployeeModel.fromJson(String source) =>
      EmployeeModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CourseDetailsEntity(id: $id, firstName: $firstName, lastName: $lastName, profilePictureUrl: $profilePictureUrl)';
  }

  @override
  bool operator ==(covariant EmployeeModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.firstName == firstName &&
        other.lastName == lastName &&
        other.profilePictureUrl == profilePictureUrl;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        firstName.hashCode ^
        lastName.hashCode ^
        profilePictureUrl.hashCode;
  }
}
