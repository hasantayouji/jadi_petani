import 'package:flutter/material.dart';

class ServiceMenu extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color bgColor;
  final Color textColor;
  final Color iconColor;
  ServiceMenu({
    @required this.icon,
    @required this.bgColor,
    @required this.textColor,
    @required this.text,
    this.iconColor,
  });
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        elevation: 0,
        child: Container(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.greenAccent,
                maxRadius: 32.0,
                child: Icon(
                  icon,
                  size: 36,
                  color: iconColor,
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: textColor,
                  fontSize: 14,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
