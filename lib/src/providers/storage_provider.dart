import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<String> initializeStorage() async {
  await Future.delayed(Duration(milliseconds: 500));
  return "Hello";
}

final storageInitProvider = FutureProvider((ref) async {
  return await initializeStorage();
});

final storageProvider = Provider<String?>((ref) {
  final client = ref.watch(storageInitProvider).asData?.value;
  return client;
});
