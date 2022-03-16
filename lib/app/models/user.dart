import 'dart:convert';
import 'address.dart';
import 'employment.dart';

class User {
  int id;
  String password;
  String firstName;
  String lastName;
  String email;
  String gender;
  String phoneNumber;
  String dateOfBirth;
  Employment employment;
  Address address;

  User({
    required this.id,
    required this.password,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.gender,
    required this.phoneNumber,
    required this.dateOfBirth,
    required this.employment,
    required this.address,
  });

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id']?.toInt() ?? 0,
      password: map['password'] ?? '',
      firstName: map['first_name'] ?? '',
      lastName: map['last_name'] ?? '',
      email: map['email'] ?? '',
      gender: map['gender'] ?? '',
      phoneNumber: map['phone_number'] ?? '',
      dateOfBirth: map['date_of_birth'] ?? '',
      employment: Employment.fromMap(map['employment']),
      address: Address.fromMap(map['address']),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'password': password,
      'first_name': firstName,
      'last_name': lastName,
      'email': email,
      'gender': gender,
      'phone_number': phoneNumber,
      'date_of_birth': dateOfBirth,
      'employment': employment.toMap(),
      'address': address.toMap(),
    };
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() {
    return 'User(id: $id, password: $password, firstName: $firstName, lastName: $lastName, email: $email, gender: $gender, phoneNumber: $phoneNumber, dateOfBirth: $dateOfBirth, employment: $employment, address: $address)';
  }
}
