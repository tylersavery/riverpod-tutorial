import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/src/providers/color_list_provider.dart';
import 'package:riverpod_tutorial/src/screens/detail_screen.dart';
import 'package:riverpod_tutorial/src/screens/favorites_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Riverpod Tutorial"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => FavoriteScreen(),
                  ),
                );
              },
              icon: Icon(Icons.favorite_border))
        ],
      ),
      body: Consumer(builder: (context, ref, _) {
        final provider = ref.read(colorListProvider.notifier);
        final colors = ref.watch(colorListProvider);

        if (colors.isEmpty) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        return RefreshIndicator(
          onRefresh: () async => provider.refresh(),
          child: ListView.builder(
            itemCount: colors.length,
            itemBuilder: (context, index) {
              final color = colors[index];

              return Card(
                child: ListTile(
                  leading: Container(
                    color: color.color,
                    width: 32,
                    height: 32,
                  ),
                  title: Text(color.title),
                  trailing: IconButton(
                    onPressed: () {
                      provider.like(color.id, !color.isLiked);
                    },
                    icon: Icon(color.isLiked ? Icons.favorite : Icons.favorite_border),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => DetailScreen(
                          hexcode: color.hexCode,
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        );
      }),
    );
  }
}
