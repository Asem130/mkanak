// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_booster_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeBoosterResponseModel _$HomeBoosterResponseModelFromJson(
        Map<String, dynamic> json) =>
    HomeBoosterResponseModel(
      (json['documents'] as List<dynamic>?)
          ?.map(HomeBoostersDocuments.fromJson)
          .toList(),
    );

Map<String, dynamic> _$HomeBoosterResponseModelToJson(
        HomeBoosterResponseModel instance) =>
    <String, dynamic>{
      'documents': instance.documents,
    };

HomeBoostersDocuments _$HomeBoostersDocumentsFromJson(
        Map<String, dynamic> json) =>
    HomeBoostersDocuments(
      json['fields'] == null ? null : BoostersData.fromJson(json['fields']),
    );

Map<String, dynamic> _$HomeBoostersDocumentsToJson(
        HomeBoostersDocuments instance) =>
    <String, dynamic>{
      'fields': instance.boostersData,
    };

BoostersData _$BoostersDataFromJson(Map<String, dynamic> json) => BoostersData(
      json['description'] == null
          ? null
          : BoosterDescription.fromJson(json['description']),
      json['image'] == null ? null : BoosterImage.fromJson(json['image']),
      json['title'] == null ? null : BoosterTitle.fromJson(json['title']),
    );

Map<String, dynamic> _$BoostersDataToJson(BoostersData instance) =>
    <String, dynamic>{
      'description': instance.description,
      'image': instance.image,
      'title': instance.title,
    };

BoosterDescription _$BoosterDescriptionFromJson(Map<String, dynamic> json) =>
    BoosterDescription(
      json['stringValue'] as String?,
    );

Map<String, dynamic> _$BoosterDescriptionToJson(BoosterDescription instance) =>
    <String, dynamic>{
      'stringValue': instance.stringValue,
    };

BoosterImage _$BoosterImageFromJson(Map<String, dynamic> json) => BoosterImage(
      json['stringValue'] as String?,
    );

Map<String, dynamic> _$BoosterImageToJson(BoosterImage instance) =>
    <String, dynamic>{
      'stringValue': instance.stringValue,
    };

BoosterTitle _$BoosterTitleFromJson(Map<String, dynamic> json) => BoosterTitle(
      json['stringValue'] as String?,
    );

Map<String, dynamic> _$BoosterTitleToJson(BoosterTitle instance) =>
    <String, dynamic>{
      'stringValue': instance.stringValue,
    };
