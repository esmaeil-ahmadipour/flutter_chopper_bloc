import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user.g.dart';

abstract class User implements Built<User, UserBuilder> {

static Serializer<User> get serializer => _$userSerializer;

int get id;

  String get name;

  String get username;

  String get email;

  Address get address;

  String get phone;

  String get website;

  Company get company;

  User._();

  factory User([void Function(UserBuilder) updates]) = _$User;
}

abstract class Address implements Built<Address, AddressBuilder> {

  static Serializer<Address> get serializer => _$addressSerializer;

  String get street;

  String get suite;

  String get city;

  String get zipCode;

  Geo get geo;

  Address._();

  factory Address([void Function(AddressBuilder) updates]) = _$Address;
}

abstract class Geo implements Built<Geo, GeoBuilder> {

  static Serializer<Geo> get serializer => _$geoSerializer;

  String get lat;

  String get lng;

  Geo._();

  factory Geo([void Function(GeoBuilder) updates]) = _$Geo;
}

abstract class Company implements Built<Company, CompanyBuilder> {

  static Serializer<Company> get serializer => _$companySerializer;

  String get name;

  String get catchPhrase;

  Company._();

  factory Company([void Function(CompanyBuilder) updates]) = _$Company;
}
