import 'package:flutter/material.dart';

class FinanceWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;
  FinanceWidget(
      {@required this.icon, @required this.text, @required this.color});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          size: 36,
          color: color,
        ),
        SizedBox(
          height: 8.0,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 14,
            color: color,
          ),
        ),
      ],
    );
  }
}
