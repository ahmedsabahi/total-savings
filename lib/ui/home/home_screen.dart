import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task/widgets/savings_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset('assets/svgs/logo.svg'),
      ),
      body: const SavingsCard(),
    );
  }
}
