import 'package:hooks_riverpod/hooks_riverpod.dart';

extension AsyncValueExtension on AsyncValue {
  /// AsyncDataかつデータがnullでない
  bool get isData => hasValue && valueOrNull != null;
}
