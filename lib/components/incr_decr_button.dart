import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';

class IncrDecrButton extends StatelessWidget {
  const IncrDecrButton({
    required this.label,
    required this.number,
    super.key,
    this.onIncr,
    this.onDecr,
  });

  final String label;
  final String number;
  final Function()? onIncr;
  final Function()? onDecr;

  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: kLabelTextStyle,
          ),
          Text(
            number,
            style: kNumberTextStyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RoundIconButton(
                icon: FontAwesomeIcons.minus,
                onPressed: onDecr,
              ),
              const SizedBox(width: 10.0),
              RoundIconButton(
                icon: FontAwesomeIcons.plus,
                onPressed: onIncr,
              )
            ],
          )
        ],
      );
}

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({super.key, this.icon, this.onPressed});

  final IconData? icon;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) => RawMaterialButton(
        onPressed: onPressed,
        constraints: const BoxConstraints.tightFor(
          width: 56.0,
          height: 56.0,
        ),
        shape: const CircleBorder(),
        fillColor: const Color(0xFF4C4F5E),
        child: Icon(icon),
      );
}
