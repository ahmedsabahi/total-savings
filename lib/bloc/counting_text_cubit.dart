import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counting_text_state.dart';

class CountingTextCubit extends Cubit<CountingTextState> {
  CountingTextCubit() : super(CountingTextInitial());

  static CountingTextCubit get(BuildContext context) =>
      BlocProvider.of(context);

  bool _isShowConfetti = false;
  final double _begin = 0;
  final double _end = 512;
  final _animationDuration = const Duration(seconds: 2);

  bool get isShowConfetti => _isShowConfetti;
  double get begin => _begin;
  double get end => _end;
  Duration get animationDuration => _animationDuration;

  void animationIsCompleted() {
    _isShowConfetti = true;
    emit(SetIsShowConfetti());
  }
}
