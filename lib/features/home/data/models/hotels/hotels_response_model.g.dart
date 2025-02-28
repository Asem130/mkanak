// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotels_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HotelsResponseModel _$HotelsResponseModelFromJson(Map<String, dynamic> json) =>
    HotelsResponseModel(
      (json['documents'] as List<dynamic>?)
          ?.map(HotelsDocuments.fromJson)
          .toList(),
    );

Map<String, dynamic> _$HotelsResponseModelToJson(
        HotelsResponseModel instance) =>
    <String, dynamic>{
      'documents': instance.documents,
    };

HotelsDocuments _$HotelsDocumentsFromJson(Map<String, dynamic> json) =>
    HotelsDocuments(
      json['fields'] == null ? null : HotelsData.fromJson(json['fields']),
    );

Map<String, dynamic> _$HotelsDocumentsToJson(HotelsDocuments instance) =>
    <String, dynamic>{
      'fields': instance.hotelsData,
    };

HotelsData _$HotelsDataFromJson(Map<String, dynamic> json) => HotelsData(
      facalitis: json['facalitis'] == null
          ? null
          : Facalitis.fromJson(json['facalitis'] as Map<String, dynamic>),
      address:
          json['address'] == null ? null : Address.fromJson(json['address']),
      cityName:
          json['cityName'] == null ? null : CityName.fromJson(json['cityName']),
      name: json['name'] == null ? null : Name.fromJson(json['name']),
      pricePerDay: json['pricePerDay'] == null
          ? null
          : PricePerDay.fromJson(json['pricePerDay']),
      country:
          json['country'] == null ? null : Country.fromJson(json['country']),
      rooms: json['rooms'] == null ? null : Rooms.fromJson(json['rooms']),
      profileImage: json['profileImage'] == null
          ? null
          : ProfileImage.fromJson(json['profileImage']),
      images: json['images'] == null ? null : Images.fromJson(json['images']),
      description: json['description'] == null
          ? null
          : Discription.fromJson(json['description']),
    );

Map<String, dynamic> _$HotelsDataToJson(HotelsData instance) =>
    <String, dynamic>{
      'address': instance.address,
      'cityName': instance.cityName,
      'name': instance.name,
      'pricePerDay': instance.pricePerDay,
      'country': instance.country,
      'rooms': instance.rooms,
      'profileImage': instance.profileImage,
      'images': instance.images,
      'description': instance.description,
      'facalitis': instance.facalitis,
    };

Address _$AddressFromJson(Map<String, dynamic> json) => Address(
      json['stringValue'] as String?,
    );

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'stringValue': instance.stringValue,
    };

Discription _$DiscriptionFromJson(Map<String, dynamic> json) => Discription(
      json['stringValue'] as String?,
    );

Map<String, dynamic> _$DiscriptionToJson(Discription instance) =>
    <String, dynamic>{
      'stringValue': instance.stringValue,
    };

ProfileImage _$ProfileImageFromJson(Map<String, dynamic> json) => ProfileImage(
      json['stringValue'] as String?,
    );

Map<String, dynamic> _$ProfileImageToJson(ProfileImage instance) =>
    <String, dynamic>{
      'stringValue': instance.stringValue,
    };

Name _$NameFromJson(Map<String, dynamic> json) => Name(
      json['stringValue'] as String?,
    );

Map<String, dynamic> _$NameToJson(Name instance) => <String, dynamic>{
      'stringValue': instance.stringValue,
    };

CityName _$CityNameFromJson(Map<String, dynamic> json) => CityName(
      json['stringValue'] as String?,
    );

Map<String, dynamic> _$CityNameToJson(CityName instance) => <String, dynamic>{
      'stringValue': instance.stringValue,
    };

Country _$CountryFromJson(Map<String, dynamic> json) => Country(
      json['stringValue'] as String?,
    );

Map<String, dynamic> _$CountryToJson(Country instance) => <String, dynamic>{
      'stringValue': instance.stringValue,
    };

PricePerDay _$PricePerDayFromJson(Map<String, dynamic> json) => PricePerDay(
      json['integerValue'] as String?,
    );

Map<String, dynamic> _$PricePerDayToJson(PricePerDay instance) =>
    <String, dynamic>{
      'integerValue': instance.integerValue,
    };

Rooms _$RoomsFromJson(Map<String, dynamic> json) => Rooms(
      json['integerValue'] as String?,
    );

Map<String, dynamic> _$RoomsToJson(Rooms instance) => <String, dynamic>{
      'integerValue': instance.integerValue,
    };

Images _$ImagesFromJson(Map<String, dynamic> json) => Images(
      arrayValue: json['arrayValue'] == null
          ? null
          : ArrayValue.fromJson(json['arrayValue']),
    );

Map<String, dynamic> _$ImagesToJson(Images instance) => <String, dynamic>{
      'arrayValue': instance.arrayValue,
    };

ArrayValue _$ArrayValueFromJson(Map<String, dynamic> json) => ArrayValue(
      values: (json['values'] as List<dynamic>?)?.map(Values.fromJson).toList(),
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

Facalitis _$FacalitisFromJson(Map<String, dynamic> json) => Facalitis(
      facalitisArrayValue: json['arrayValue'] == null
          ? null
          : FacalitisArrayValue.fromJson(
              json['arrayValue'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FacalitisToJson(Facalitis instance) => <String, dynamic>{
      'arrayValue': instance.facalitisArrayValue,
    };

FacalitisArrayValue _$FacalitisArrayValueFromJson(Map<String, dynamic> json) =>
    FacalitisArrayValue(
      hotelFacalitisList: (json['values'] as List<dynamic>?)
          ?.map((e) => Value.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FacalitisArrayValueToJson(
        FacalitisArrayValue instance) =>
    <String, dynamic>{
      'values': instance.hotelFacalitisList,
    };

Value _$ValueFromJson(Map<String, dynamic> json) => Value(
      mapValue: json['mapValue'] == null
          ? null
          : MapValue.fromJson(json['mapValue'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ValueToJson(Value instance) => <String, dynamic>{
      'mapValue': instance.mapValue,
    };

MapValue _$MapValueFromJson(Map<String, dynamic> json) => MapValue(
      hotelFacalitisData: json['fields'] == null
          ? null
          : HotelFacalitisData.fromJson(json['fields'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MapValueToJson(MapValue instance) => <String, dynamic>{
      'fields': instance.hotelFacalitisData,
    };

HotelFacalitisData _$HotelFacalitisDataFromJson(Map<String, dynamic> json) =>
    HotelFacalitisData(
      name: json['name'] == null ? null : Name.fromJson(json['name']),
      image:
          json['image'] == null ? null : ProfileImage.fromJson(json['image']),
      number: json['number'] == null ? null : Number.fromJson(json['number']),
    );

Map<String, dynamic> _$HotelFacalitisDataToJson(HotelFacalitisData instance) =>
    <String, dynamic>{
      'name': instance.name,
      'image': instance.image,
      'number': instance.number,
    };

Number _$NumberFromJson(Map<String, dynamic> json) => Number(
      json['stringValue'] as String?,
    );

Map<String, dynamic> _$NumberToJson(Number instance) => <String, dynamic>{
      'stringValue': instance.stringValue,
    };
