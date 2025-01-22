// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'searched_hotels_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchedHotelsResponseModelWrapper _$SearchedHotelsResponseModelWrapperFromJson(
        Map<String, dynamic> json) =>
    SearchedHotelsResponseModelWrapper(
      documents: (json['documents'] as List<dynamic>?)
          ?.map(
              (e) => SearchedHotelsDocument.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchedHotelsResponseModelWrapperToJson(
        SearchedHotelsResponseModelWrapper instance) =>
    <String, dynamic>{
      'documents': instance.documents,
    };

SearchedHotelsDocument _$SearchedHotelsDocumentFromJson(
        Map<String, dynamic> json) =>
    SearchedHotelsDocument(
      document: json['document'] == null
          ? null
          : SearchedHotelsDocuments.fromJson(
              json['document'] as Map<String, dynamic>),
      readTime: json['readTime'] as String?,
    );

Map<String, dynamic> _$SearchedHotelsDocumentToJson(
        SearchedHotelsDocument instance) =>
    <String, dynamic>{
      'document': instance.document,
      'readTime': instance.readTime,
    };

SearchedHotelsDocuments _$SearchedHotelsDocumentsFromJson(
        Map<String, dynamic> json) =>
    SearchedHotelsDocuments(
      hotelsData: json['fields'] == null
          ? null
          : SearchedHotelsData.fromJson(json['fields'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SearchedHotelsDocumentsToJson(
        SearchedHotelsDocuments instance) =>
    <String, dynamic>{
      'fields': instance.hotelsData,
    };

SearchedHotelsData _$SearchedHotelsDataFromJson(Map<String, dynamic> json) =>
    SearchedHotelsData(
      name: json['name'] == null
          ? null
          : Name.fromJson(json['name'] as Map<String, dynamic>),
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      cityName: json['cityName'] == null
          ? null
          : CityName.fromJson(json['cityName'] as Map<String, dynamic>),
      country: json['country'] == null
          ? null
          : Country.fromJson(json['country'] as Map<String, dynamic>),
      profileImage: json['profileImage'] == null
          ? null
          : ProfileImage.fromJson(json['profileImage'] as Map<String, dynamic>),
      images: json['images'] == null
          ? null
          : Images.fromJson(json['images'] as Map<String, dynamic>),
      rooms: json['rooms'] == null
          ? null
          : Rooms.fromJson(json['rooms'] as Map<String, dynamic>),
      pricePerDay: json['pricePerDay'] == null
          ? null
          : PricePerDay.fromJson(json['pricePerDay'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SearchedHotelsDataToJson(SearchedHotelsData instance) =>
    <String, dynamic>{
      'name': instance.name,
      'address': instance.address,
      'cityName': instance.cityName,
      'country': instance.country,
      'profileImage': instance.profileImage,
      'images': instance.images,
      'rooms': instance.rooms,
      'pricePerDay': instance.pricePerDay,
    };

Name _$NameFromJson(Map<String, dynamic> json) => Name(
      stringValue: json['stringValue'] as String?,
    );

Map<String, dynamic> _$NameToJson(Name instance) => <String, dynamic>{
      'stringValue': instance.stringValue,
    };

Address _$AddressFromJson(Map<String, dynamic> json) => Address(
      stringValue: json['stringValue'] as String?,
    );

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'stringValue': instance.stringValue,
    };

CityName _$CityNameFromJson(Map<String, dynamic> json) => CityName(
      stringValue: json['stringValue'] as String?,
    );

Map<String, dynamic> _$CityNameToJson(CityName instance) => <String, dynamic>{
      'stringValue': instance.stringValue,
    };

Country _$CountryFromJson(Map<String, dynamic> json) => Country(
      stringValue: json['stringValue'] as String?,
    );

Map<String, dynamic> _$CountryToJson(Country instance) => <String, dynamic>{
      'stringValue': instance.stringValue,
    };

ProfileImage _$ProfileImageFromJson(Map<String, dynamic> json) => ProfileImage(
      stringValue: json['stringValue'] as String?,
    );

Map<String, dynamic> _$ProfileImageToJson(ProfileImage instance) =>
    <String, dynamic>{
      'stringValue': instance.stringValue,
    };

Images _$ImagesFromJson(Map<String, dynamic> json) => Images(
      arrayValue: json['arrayValue'] == null
          ? null
          : ArrayValue.fromJson(json['arrayValue'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ImagesToJson(Images instance) => <String, dynamic>{
      'arrayValue': instance.arrayValue,
    };

ArrayValue _$ArrayValueFromJson(Map<String, dynamic> json) => ArrayValue(
      values: (json['values'] as List<dynamic>?)
          ?.map((e) => Values.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ArrayValueToJson(ArrayValue instance) =>
    <String, dynamic>{
      'values': instance.values,
    };

Values _$ValuesFromJson(Map<String, dynamic> json) => Values(
      stringValue: json['stringValue'] as String?,
    );

Map<String, dynamic> _$ValuesToJson(Values instance) => <String, dynamic>{
      'stringValue': instance.stringValue,
    };

Rooms _$RoomsFromJson(Map<String, dynamic> json) => Rooms(
      integerValue: json['integerValue'] as String?,
    );

Map<String, dynamic> _$RoomsToJson(Rooms instance) => <String, dynamic>{
      'integerValue': instance.integerValue,
    };

PricePerDay _$PricePerDayFromJson(Map<String, dynamic> json) => PricePerDay(
      integerValue: json['integerValue'] as String?,
    );

Map<String, dynamic> _$PricePerDayToJson(PricePerDay instance) =>
    <String, dynamic>{
      'integerValue': instance.integerValue,
    };
