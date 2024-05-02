import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity.freezed.dart';
part 'activity.g.dart';

@freezed
class Activity with _$Activity {
  const factory Activity({
    required String activity,
    required String type,
    required int participants,
    required int price,
    required String link,
    required String key,
    required int accessibility,
  }) = _Activity;

  factory Activity.fromJson(Map<String, Object?> json) =>
      _$ActivityFromJson(json);
}
