import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/bloc/counting_text_cubit.dart';

class Confetti extends StatelessWidget {
  const Confetti({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CountingTextCubit, CountingTextState>(
      builder: (context, state) {
        return CountingTextCubit.get(context).isShowConfetti
            ? Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  'assets/gifs/gif-maker.gif',
                  fit: BoxFit.cover,
                ),
              )
            : const SizedBox();
      },
    );
  }
}
