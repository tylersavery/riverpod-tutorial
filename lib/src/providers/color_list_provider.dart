import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_tutorial/src/models/color_result.dart';
import 'package:riverpod_tutorial/src/services/api_service.dart';

part 'color_list_provider.g.dart';

@Riverpod(keepAlive: true)
class ColorList extends _$ColorList {
  @override
  List<ColorResult> build() {
    _load();
    return [];
  }

  Future<void> _load() async {
    final results = await ApiService().listTopColors();
    state = results;
  }

  Future<void> refresh() async {
    state = [];
    await _load();
  }

  void like(int id, bool value) {
    final index = state.indexWhere((color) => color.id == id);
    if (index >= 0) {
      state = [...state]
        ..removeAt(index)
        ..insert(index, state[index].like(value));
    }
  }
}
