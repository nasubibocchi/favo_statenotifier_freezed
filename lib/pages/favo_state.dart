import 'package:favo_statenotifier_freezed/entities/contents.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'favo_state.freezed.dart';

@freezed
class FavoState with _$FavoState {
  const factory FavoState(
      {@Default([]) List<Contents> data}) = _FavoState;

}
