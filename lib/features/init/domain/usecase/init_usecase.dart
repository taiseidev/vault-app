import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../presentation/init_state.dart';

part 'init_usecase.g.dart';

@riverpod
Future<InitState> initUsecase(InitUsecaseRef ref) async {
  await Future.delayed(const Duration(seconds: 5));
  return const InitState(isLoggedIn: false);
}
