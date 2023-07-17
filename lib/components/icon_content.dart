import 'package:flutter/material.dart';

import '../constants.dart';

class IconContent extends StatelessWidget {
  final IconData? icon;
  final String? label;

  const IconContent({super.key, this.icon, this.label});
  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 80.0,
          ),
          const SizedBox(height: 15.0),
          Text(
            label ?? ' ',
            style: kLabelTextStyle,
          ),
        ],
      );
}
