import 'package:flutter/material.dart';

class CardSmall extends StatelessWidget {
  final Widget child;
  CardSmall({this.child});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: child,
    );
  }
}
