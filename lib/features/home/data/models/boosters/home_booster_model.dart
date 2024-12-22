import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_booster_model.g.dart';

@JsonSerializable()
class HomeBoosterResponseModel {
  final List<HomeBoostersDocuments>? documents;
  HomeBoosterResponseModel(this.documents);
  factory HomeBoosterResponseModel.fromJson(json) {
    return _$HomeBoosterResponseModelFromJson(json);
  }
}

@JsonSerializable()
class HomeBoostersDocuments {
  @JsonKey(name: 'fields')
  final BoostersData? boostersData;
  HomeBoostersDocuments(this.boostersData);
  factory HomeBoostersDocuments.fromJson(json) {
    return _$HomeBoostersDocumentsFromJson(json);
  }
}

@JsonSerializable()
class BoostersData {
  final BoosterDescription? description;
  final BoosterImage? image;
  final BoosterTitle? title;

  BoostersData(this.description, this.image, this.title);
  factory BoostersData.fromJson(json) {
    return _$BoostersDataFromJson(json);
  }
}

@JsonSerializable()
class BoosterDescription {
  final String? stringValue;

  BoosterDescription(this.stringValue);
  factory BoosterDescription.fromJson(json) {
    return _$BoosterDescriptionFromJson(json);
  }
}

@JsonSerializable()
class BoosterImage {
  final String? stringValue;

  BoosterImage(this.stringValue);
  factory BoosterImage.fromJson(json) {
    return _$BoosterImageFromJson(json);
  }
}

@JsonSerializable()
class BoosterTitle {
  final String? stringValue;

  BoosterTitle(this.stringValue);
  factory BoosterTitle.fromJson(json) {
    return _$BoosterTitleFromJson(json);
  }
}
