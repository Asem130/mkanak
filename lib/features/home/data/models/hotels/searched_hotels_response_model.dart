import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mkanak/features/home/data/models/hotels/hotels_response_model.dart';
part 'searched_hotels_response_model.g.dart';

@JsonSerializable()
class SearchedHotelsResponseModelWrapper {
  final List<SearchedHotelsDocument>? documents;

  SearchedHotelsResponseModelWrapper({this.documents});

  factory SearchedHotelsResponseModelWrapper.fromJson(List<dynamic> json) {
    // Map each item in the list to the HotelsDocumentWrapper model
    return SearchedHotelsResponseModelWrapper(
      documents: json.map((e) => SearchedHotelsDocument.fromJson(e)).toList(),
    );
  }
}

@JsonSerializable()
class SearchedHotelsDocument {
  final SearchedHotelsDocuments? document;
  final String? readTime;

  SearchedHotelsDocument({this.document, this.readTime});

  factory SearchedHotelsDocument.fromJson(Map<String, dynamic> json) {
    return _$SearchedHotelsDocumentFromJson(json);
  }
}

@JsonSerializable()
class SearchedHotelsDocuments {
  @JsonKey(name: 'fields')
  final SearchedHotelsData? hotelsData;

  SearchedHotelsDocuments({this.hotelsData});

  factory SearchedHotelsDocuments.fromJson(Map<String, dynamic> json) {
    return _$SearchedHotelsDocumentsFromJson(json);
  }
}

@JsonSerializable()
class SearchedHotelsData {
  final Name? name;
  final Address? address;
  final CityName? cityName;
  final Country? country;
  final ProfileImage? profileImage;
  final Images? images;
  final Rooms? rooms;
  final PricePerDay? pricePerDay;
  final Facalitis? facalitis;

  SearchedHotelsData({
    this.facalitis,
    this.name,
    this.address,
    this.cityName,
    this.country,
    this.profileImage,
    this.images,
    this.rooms,
    this.pricePerDay,
  });

  factory SearchedHotelsData.fromJson(Map<String, dynamic> json) {
    return _$SearchedHotelsDataFromJson(json);
  }
}

@JsonSerializable()
class Name {
  final String? stringValue;

  Name({this.stringValue});

  factory Name.fromJson(Map<String, dynamic> json) {
    return _$NameFromJson(json);
  }
}

@JsonSerializable()
class Address {
  final String? stringValue;

  Address({this.stringValue});

  factory Address.fromJson(Map<String, dynamic> json) {
    return _$AddressFromJson(json);
  }
}

@JsonSerializable()
class CityName {
  final String? stringValue;

  CityName({this.stringValue});

  factory CityName.fromJson(Map<String, dynamic> json) {
    return _$CityNameFromJson(json);
  }
}

@JsonSerializable()
class Country {
  final String? stringValue;

  Country({this.stringValue});

  factory Country.fromJson(Map<String, dynamic> json) {
    return _$CountryFromJson(json);
  }
}

@JsonSerializable()
class ProfileImage {
  final String? stringValue;

  ProfileImage({this.stringValue});

  factory ProfileImage.fromJson(Map<String, dynamic> json) {
    return _$ProfileImageFromJson(json);
  }
}

@JsonSerializable()
class Images {
  final ArrayValue? arrayValue;

  Images({this.arrayValue});

  factory Images.fromJson(Map<String, dynamic> json) {
    return _$ImagesFromJson(json);
  }
}

@JsonSerializable()
class ArrayValue {
  final List<Values>? values;

  ArrayValue({this.values});

  factory ArrayValue.fromJson(Map<String, dynamic> json) {
    return _$ArrayValueFromJson(json);
  }
}

@JsonSerializable()
class Values {
  final String? stringValue;

  Values({this.stringValue});

  factory Values.fromJson(Map<String, dynamic> json) {
    return _$ValuesFromJson(json);
  }
}

@JsonSerializable()
class Rooms {
  final String? integerValue;

  Rooms({this.integerValue});

  factory Rooms.fromJson(Map<String, dynamic> json) {
    return _$RoomsFromJson(json);
  }
}

@JsonSerializable()
class PricePerDay {
  final String? integerValue;

  PricePerDay({this.integerValue});

  factory PricePerDay.fromJson(Map<String, dynamic> json) {
    return _$PricePerDayFromJson(json);
  }
}
