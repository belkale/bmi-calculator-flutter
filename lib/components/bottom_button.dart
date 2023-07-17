import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  final Function() onTap;
  final String title;

  const BottomButton({required this.title, required this.onTap, super.key});
  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: onTap,
        child: Container(
          height: kBottomContainerHeight,
          width: double.infinity,
          color: kBottomContainerColor,
          margin: const EdgeInsets.only(top: 10.0),
          child: Center(
            child: Text(
              title,
              style: kHeavyNumberStyle,
            ),
          ),
        ),
      );
}
