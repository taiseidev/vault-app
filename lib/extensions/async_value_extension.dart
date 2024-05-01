import 'package:hooks_riverpod/hooks_riverpod.dart';

extension AsyncValueExtension<T> on AsyncValue<T> {
  /// AsyncDataかつデータがnullでない
  bool get isData => hasValue && valueOrNull != null;
}
