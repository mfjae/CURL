import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(
  fontSize: 40,
  fontWeight: FontWeight.w600,
  color: Color(0xffffffff),
);

class IconContent extends StatelessWidget {
  IconContent({this.icon, this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 50.0,
        ),
        Icon(
          icon,
          color: const Color(0xffffffff),
          size: 60.0,
        ),
        const SizedBox(
          height: 40.0,
        ),
        Text(
          label,
          style: labelTextStyle,
        )
      ],
    );
  }
}
