import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/models/activity.dart';
import 'package:riverpod_practice/providers/activity_provider.dart';
import 'package:riverpod_practice/providers/hello_world_provider.dart';

void main() => runApp(
      const ProviderScope(
        child: MyApp(),
      ),
    );

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String value = ref.watch(helloWorldProvider);

    final AsyncValue<Activity> activity = ref.watch(activityProvider);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Riverpod + Anotations'),
          ),
          body: Consumer(
            builder: (context, ref, child) {
              return Center(
                child: switch (activity) {
                  AsyncData(:final value) => Text(
                      'Activity: ${value.accessibility}',
                    ),
                  AsyncError() =>
                    const Text('Ops, something unexpected happened'),
                  _ => const CircularProgressIndicator(),
                },
              );
            },
          )),
    );
  }
}
