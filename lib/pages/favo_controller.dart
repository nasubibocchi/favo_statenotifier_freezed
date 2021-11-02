import 'package:favo_statenotifier_freezed/entities/contents.dart';
import 'package:favo_statenotifier_freezed/pages/favo_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FavoController extends StateNotifier<FavoState> {
  FavoController() : super(const FavoState());

  void initState ({required List<Contents> data}) {
    state = state.copyWith(data: data);
  }

  void favoriteChange ({required List<Contents> data, required int index}) {
    data[index].isFavo = !data[index].isFavo;
    state = state.copyWith(data: data);
  }

}