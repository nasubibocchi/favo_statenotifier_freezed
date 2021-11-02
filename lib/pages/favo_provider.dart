import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'favo_controller.dart';
import 'favo_state.dart';

final favoProvider =
    StateNotifierProvider.autoDispose<FavoController, FavoState>(
        (ref) => FavoController());
