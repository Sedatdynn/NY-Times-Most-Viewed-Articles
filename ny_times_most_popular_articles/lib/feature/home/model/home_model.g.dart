// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MostViewResponseModel _$MostViewResponseModelFromJson(Map<String, dynamic> json) => MostViewResponseModel(
      results: (json['results'] as List<dynamic>?)?.map((e) => Results.fromJson(e as Map<String, dynamic>)).toList(),
    );

Map<String, dynamic> _$MostViewResponseModelToJson(MostViewResponseModel instance) => <String, dynamic>{
      'results': instance.results,
    };

Results _$ResultsFromJson(Map<String, dynamic> json) => Results(
      uri: json['uri'] as String?,
      url: json['url'] as String?,
      id: json['id'] as int?,
      assetId: json['assetId'] as int?,
      source: json['source'] as String?,
      publishedDate: json['published_date'] as String?,
      updated: json['updated'] as String?,
      section: json['section'] as String?,
      subsection: json['subsection'] as String?,
      nytdsection: json['nytdsection'] as String?,
      media: (json['media'] as List<dynamic>?)?.map((e) => Media.fromJson(e as Map<String, dynamic>)).toList(),
      adxKeywords: json['adx_keywords'] as String?,
      byline: json['byline'] as String?,
      type: json['type'] as String?,
      title: json['title'] as String?,
      abstract: json['abstract'] as String?,
      desFacet: (json['desFacet'] as List<dynamic>?)?.map((e) => e as String).toList(),
      orgFacet: (json['orgFacet'] as List<dynamic>?)?.map((e) => e as String).toList(),
      perFacet: (json['perFacet'] as List<dynamic>?)?.map((e) => e as String).toList(),
      geoFacet: (json['geoFacet'] as List<dynamic>?)?.map((e) => e as String).toList(),
      etaId: json['etaId'] as int?,
    );

Map<String, dynamic> _$ResultsToJson(Results instance) => <String, dynamic>{
      'uri': instance.uri,
      'url': instance.url,
      'id': instance.id,
      'assetId': instance.assetId,
      'source': instance.source,
      'published_date': instance.publishedDate,
      'updated': instance.updated,
      'section': instance.section,
      'subsection': instance.subsection,
      'nytdsection': instance.nytdsection,
      'adx_keywords': instance.adxKeywords,
      'byline': instance.byline,
      'type': instance.type,
      'title': instance.title,
      'abstract': instance.abstract,
      'desFacet': instance.desFacet,
      'orgFacet': instance.orgFacet,
      'perFacet': instance.perFacet,
      'geoFacet': instance.geoFacet,
      'media': instance.media,
      'etaId': instance.etaId,
    };

Media _$MediaFromJson(Map<String, dynamic> json) => Media(
      type: json['type'] as String?,
      subtype: json['subtype'] as String?,
      caption: json['caption'] as String?,
      copyright: json['copyright'] as String?,
      approvedForSyndication: json['approvedForSyndication'] as int?,
      mediaMetadata: (json['media-metadata'] as List<dynamic>?)
          ?.map((e) => MediaMetadata.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MediaToJson(Media instance) => <String, dynamic>{
      'type': instance.type,
      'subtype': instance.subtype,
      'caption': instance.caption,
      'copyright': instance.copyright,
      'approvedForSyndication': instance.approvedForSyndication,
      'media-metadata': instance.mediaMetadata,
    };

MediaMetadata _$MediaMetadataFromJson(Map<String, dynamic> json) => MediaMetadata(
      url: json['url'] as String?,
      format: json['format'] as String?,
      height: json['height'] as int?,
      width: json['width'] as int?,
    );

Map<String, dynamic> _$MediaMetadataToJson(MediaMetadata instance) => <String, dynamic>{
      'url': instance.url,
      'format': instance.format,
      'height': instance.height,
      'width': instance.width,
    };
