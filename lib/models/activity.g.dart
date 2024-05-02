// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActivityImpl _$$ActivityImplFromJson(Map<String, dynamic> json) =>
    _$ActivityImpl(
      activity: json['activity'] as String,
      type: json['type'] as String,
      participants: (json['participants'] as num).toInt(),
      price: (json['price'] as num).toInt(),
      link: json['link'] as String,
      key: json['key'] as String,
      accessibility: (json['accessibility'] as num).toInt(),
    );

Map<String, dynamic> _$$ActivityImplToJson(_$ActivityImpl instance) =>
    <String, dynamic>{
      'activity': instance.activity,
      'type': instance.type,
      'participants': instance.participants,
      'price': instance.price,
      'link': instance.link,
      'key': instance.key,
      'accessibility': instance.accessibility,
    };
