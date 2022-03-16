import 'dart:convert';

class Address {
  String city;
  String streetName;
  String streetAddress;
  String zipCode;
  String state;
  String country;
  
  Address({
    required this.city,
    required this.streetName,
    required this.streetAddress,
    required this.zipCode,
    required this.state,
    required this.country,
  });

  Map<String, dynamic> toMap() {
    return {
      'city': city,
      'street_name': streetName,
      'street_address': streetAddress,
      'zip_code': zipCode,
      'state': state,
      'country': country,
    };
  }

  factory Address.fromMap(Map<String, dynamic> map) {
    return Address(
      city: map['city'] ?? '',
      streetName: map['street_name'] ?? '',
      streetAddress: map['street_address'] ?? '',
      zipCode: map['zip_code'] ?? '',
      state: map['state'] ?? '',
      country: map['country'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Address.fromJson(String source) => Address.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Address(city: $city, streetName: $streetName, streetAddress: $streetAddress, zipCode: $zipCode, state: $state, country: $country)';
  }
}
