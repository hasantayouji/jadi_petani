import 'package:flutter/material.dart';

class InvestValue extends StatelessWidget {
  final String text;
  final IconData icon;
  final String value;
  InvestValue({@required this.text, @required this.icon, @required this.value});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            Icon(icon),
            Text(text),
          ],
        ),
        Text(value),
      ],
    );
  }
}
