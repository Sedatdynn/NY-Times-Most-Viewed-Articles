import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part 'home_model.g.dart';

@JsonSerializable()
class MostViewResponseModel extends Equatable {
  final List<Results>? results;

  const MostViewResponseModel({this.results});

  factory MostViewResponseModel.fromJson(Map<String, dynamic> json) {
    return _$MostViewResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$MostViewResponseModelToJson(this);
  }

  @override
  List<Object?> get props => [results];
}

@JsonSerializable()
class Results extends Equatable {
  final String? uri;
  final String? url;
  final int? id;
  final int? assetId;
  final String? source;
  final String? publishedDate;
  final String? updated;
  final String? section;
  final String? subsection;
  final String? nytdsection;
  final String? adxKeywords;
  final String? byline;
  final String? type;
  final String? title;
  final String? abstract;
  final List<String>? desFacet;
  final List<String>? orgFacet;
  final List<String>? perFacet;
  final List<String>? geoFacet;
  final List<Media>? media;
  final int? etaId;

  const Results(
      {this.uri,
      this.url,
      this.id,
      this.assetId,
      this.source,
      this.publishedDate,
      this.updated,
      this.section,
      this.subsection,
      this.nytdsection,
      this.media,
      this.adxKeywords,
      this.byline,
      this.type,
      this.title,
      this.abstract,
      this.desFacet,
      this.orgFacet,
      this.perFacet,
      this.geoFacet,
      this.etaId});

  factory Results.fromJson(Map<String, dynamic> json) {
    return _$ResultsFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ResultsToJson(this);
  }

  @override
  List<Object?> get props => [
        uri,
        url,
        id,
        assetId,
        source,
        publishedDate,
        updated,
        section,
        subsection,
        nytdsection,
        adxKeywords,
        media,
        byline,
        type,
        title,
        abstract,
        desFacet,
        orgFacet,
        perFacet,
        geoFacet,
        etaId,
      ];
}

@JsonSerializable()
class Media extends Equatable {
  final String? type;
  final String? subtype;
  final String? caption;
  final String? copyright;
  final int? approvedForSyndication;
  final List<MediaMetadata>? mediaMetadata;

  const Media({this.type, this.subtype, this.caption, this.copyright, this.approvedForSyndication, this.mediaMetadata});

  factory Media.fromJson(Map<String, dynamic> json) {
    return _$MediaFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$MediaToJson(this);
  }

  @override
  List<Object?> get props => [
        type,
        subtype,
        caption,
        copyright,
        approvedForSyndication,
        mediaMetadata,
      ];
}

@JsonSerializable()
class MediaMetadata extends Equatable {
  final String? url;
  final String? format;
  final int? height;
  final int? width;

  const MediaMetadata({this.url, this.format, this.height, this.width});

  factory MediaMetadata.fromJson(Map<String, dynamic> json) {
    return _$MediaMetadataFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$MediaMetadataToJson(this);
  }

  @override
  List<Object?> get props => [url, format, height, width];
}
