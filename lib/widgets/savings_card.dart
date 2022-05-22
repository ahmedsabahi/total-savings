import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task/widgets/confetti.dart';
import 'package:task/widgets/container_content.dart';

class SavingsCard extends StatelessWidget {
  const SavingsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: const BoxDecoration(
        color: Color(0xffebf9fb),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SvgPicture.asset('assets/svgs/arrow.svg'),
          ),
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset('assets/svgs/star.svg'),
          ),
          Align(
            alignment: const Alignment(0.2, 1.0),
            child: SvgPicture.asset('assets/svgs/heart.svg'),
          ),
          const ContainerContent(),
          const Confetti(),
        ],
      ),
    );
  }
}
