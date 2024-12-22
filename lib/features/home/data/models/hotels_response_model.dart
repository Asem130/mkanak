import 'package:freezed_annotation/freezed_annotation.dart';
part 'hotels_response_model.g.dart';

@JsonSerializable()
class HotelsResponseModel {
  final List<Documents>? documents;
  factory HotelsResponseModel.fromJson(json) {
    return _$HotelsResponseModelFromJson(json);
  }

  HotelsResponseModel(this.documents);
}

@JsonSerializable()
class Documents {
  @JsonKey(name: 'fields')
  final HotelsData? hotelsData;
  Documents(this.hotelsData);
  factory Documents.fromJson(json) {
    return _$DocumentsFromJson(json);
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

  HotelsData(
      {this.address,
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
