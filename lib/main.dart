import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/src/providers/storage_provider.dart';
import 'package:riverpod_tutorial/src/screens/home_screen.dart';

void main() async {
  final storageClient = await ProviderContainer().read(storageInitProvider.future);

  runApp(
    ProviderScope(
      overrides: [storageProvider.overrideWith((ref) => storageClient)],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
