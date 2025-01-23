import 'package:freezed_annotation/freezed_annotation.dart';
part 'hotels_response_model.g.dart';

@JsonSerializable()
class HotelsResponseModel {
  final List<HotelsDocuments>? documents;
  factory HotelsResponseModel.fromJson(json) {
    return _$HotelsResponseModelFromJson(json);
  }

  HotelsResponseModel(this.documents);
}

@JsonSerializable()
class HotelsDocuments {
  @JsonKey(name: 'fields')
  final HotelsData? hotelsData;
  HotelsDocuments(this.hotelsData);
  factory HotelsDocuments.fromJson(json) {
    return _$HotelsDocumentsFromJson(json);
  }
}

@JsonSerializable()
class HotelsData {
  final Address? address;
  final CityName? cityName;
  final Name? name;
  final PricePerDay? pricePerDay;
  final Country? country;
  final Rooms? rooms;
  final ProfileImage? profileImage;
  final Images? images;
  final Discription? description;
  final Facalitis? facalitis;
  HotelsData(
      {this.facalitis,
      this.address,
      this.cityName,
      this.name,
      this.pricePerDay,
      this.country,
      this.rooms,
      this.profileImage,
      this.images,
      this.description});
  factory HotelsData.fromJson(json) {
    return _$HotelsDataFromJson(json);
  }
}

@JsonSerializable()
class Address {
  String? stringValue;

  Address(this.stringValue);
  factory Address.fromJson(json) {
    return _$AddressFromJson(json);
  }
}

@JsonSerializable()
class Discription {
  String? stringValue;

  Discription(this.stringValue);
  factory Discription.fromJson(json) {
    return _$DiscriptionFromJson(json);
  }
}

@JsonSerializable()
class ProfileImage {
  String? stringValue;

  ProfileImage(this.stringValue);
  factory ProfileImage.fromJson(json) {
    return _$ProfileImageFromJson(json);
  }
}

@JsonSerializable()
class Name {
  String? stringValue;

  Name(this.stringValue);
  factory Name.fromJson(json) {
    return _$NameFromJson(json);
  }
}

@JsonSerializable()
class CityName {
  String? stringValue;
  CityName(this.stringValue);
  factory CityName.fromJson(json) {
    return _$CityNameFromJson(json);
  }
}

@JsonSerializable()
class Country {
  String? stringValue;
  Country(this.stringValue);
  factory Country.fromJson(json) {
    return _$CountryFromJson(json);
  }
}

@JsonSerializable()
class PricePerDay {
  String? integerValue;

  PricePerDay(this.integerValue);
  factory PricePerDay.fromJson(json) {
    return _$PricePerDayFromJson(json);
  }
}

@JsonSerializable()
class Rooms {
  String? integerValue;
  Rooms(this.integerValue);
  factory Rooms.fromJson(json) {
    return _$RoomsFromJson(json);
  }
}

@JsonSerializable()
class Images {
  ArrayValue? arrayValue;

  Images({this.arrayValue});
  factory Images.fromJson(json) {
    return _$ImagesFromJson(json);
  }
}

@JsonSerializable()
class ArrayValue {
  List<Values>? values;

  ArrayValue({this.values});
  factory ArrayValue.fromJson(json) {
    return _$ArrayValueFromJson(json);
  }
}

@JsonSerializable()
class Values {
  String? stringValue;

  Values({this.stringValue});
  factory Values.fromJson(json) {
    return _$ValuesFromJson(json);
  }
}

@JsonSerializable()
class Facalitis {
  Facalitis({
    this.facalitisArrayValue,
  });
  @JsonKey(name: 'arrayValue')
  final FacalitisArrayValue? facalitisArrayValue;

  factory Facalitis.fromJson(Map<String, dynamic> json) =>
      _$FacalitisFromJson(json);
}

@JsonSerializable()
class FacalitisArrayValue {
  FacalitisArrayValue({
    required this.hotelFacalitisList,
  });
  @JsonKey(name: 'values')
  final List<Value>? hotelFacalitisList;

  factory FacalitisArrayValue.fromJson(Map<String, dynamic> json) =>
      _$FacalitisArrayValueFromJson(json);
}

@JsonSerializable()
class Value {
  Value({
    required this.mapValue,
  });

  final MapValue? mapValue;

  factory Value.fromJson(Map<String, dynamic> json) => _$ValueFromJson(json);
}

@JsonSerializable()
class MapValue {
  MapValue({
    required this.hotelFacalitisData,
  });
  @JsonKey(name: 'fields')
  final HotelFacalitisData? hotelFacalitisData;

  factory MapValue.fromJson(Map<String, dynamic> json) =>
      _$MapValueFromJson(json);
}

@JsonSerializable()
class HotelFacalitisData {
  HotelFacalitisData({
    required this.name,
    required this.image,
    required this.number,
  });

  final Name? name;
  final ProfileImage? image;
  final Number? number;

  factory HotelFacalitisData.fromJson(Map<String, dynamic> json) =>
      _$HotelFacalitisDataFromJson(json);
}

@JsonSerializable()
class Number {
  String? stringValue;

  Number(this.stringValue);
  factory Number.fromJson(json) {
    return _$NumberFromJson(json);
  }
}
