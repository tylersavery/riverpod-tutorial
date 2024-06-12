import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/src/providers/color_detail_provider.dart';

class DetailScreen extends ConsumerWidget {
  final String hexcode;
  const DetailScreen({super.key, required this.hexcode});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final result = ref.watch(colorDetailProvider(hexcode));

    return Scaffold(
      appBar: AppBar(),
      body: result.when(
        data: (color) {
          if (color == null) {
            return Center(child: Text("Not Found"));
          }

          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(color.title),
                Text(color.username),
                Text("Views: ${color.numViews}"),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: color.color,
                      borderRadius: BorderRadius.circular(64),
                    ),
                    width: 128,
                    height: 128,
                  ),
                ),
              ],
            ),
          );
        },
        error: (error, st) {
          return Center(child: Text(error.toString()));
        },
        loading: () => Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
