import 'package:flutter/material.dart';
import 'package:task/bloc/counting_text_cubit.dart';

class CountingText extends StatefulWidget {
  const CountingText({Key? key}) : super(key: key);

  @override
  State<CountingText> createState() => _CountingTextState();
}

class _CountingTextState extends State<CountingText>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  initState() {
    super.initState();
    final cubit = CountingTextCubit.get(context);
    _controller = AnimationController(
      duration: cubit.animationDuration,
      vsync: this,
    );
    _animation = Tween<double>(begin: cubit.begin, end: cubit.end).animate(
      CurvedAnimation(parent: _controller, curve: Curves.linear),
    );
    _controller.forward();
    _animation.addListener(() {
      if (_animation.isCompleted) cubit.animationIsCompleted();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CountingAnimatedText(
      key: UniqueKey(),
      animation: _animation,
    );
  }
}

class CountingAnimatedText extends AnimatedWidget {
  const CountingAnimatedText({
    Key? key,
    required this.animation,
  }) : super(key: key, listenable: animation);

  final Animation<double> animation;

  @override
  Widget build(BuildContext context) => Text(
        animation.value.toStringAsFixed(2),
        style: Theme.of(context).textTheme.headline5,
      );
}
