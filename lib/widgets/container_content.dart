import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task/widgets/counting_text.dart';

class ContainerContent extends StatelessWidget {
  const ContainerContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.only(
        top: 16,
        right: 24.0,
        bottom: 17,
        left: 20,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Your Total Savings",
                  style: textTheme.subtitle2,
                ),
                Row(
                  children: [
                    SvgPicture.asset('assets/svgs/savingsIcon.svg'),
                    const SizedBox(width: 8),
                    Text(
                      "EGP ",
                      style: textTheme.headline5,
                    ),
                    const CountingText(),
                  ],
                )
              ],
            ),
          ),
          OutlinedButton(
            onPressed: () {},
            child: const Text("Tell a friend"),
          )
        ],
      ),
    );
  }
}
