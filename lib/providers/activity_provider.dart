import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_practice/models/activity.dart';


part 'activity_provider.g.dart';

@riverpod
Future<Activity> activity(ActivityRef ref) async {
  final response = await http.get(Uri.https('boredapi.com', '/api/activity'));

  final json = jsonDecode(response.body) as Map<String, dynamic>;

  return Activity.fromJson(json);
}
