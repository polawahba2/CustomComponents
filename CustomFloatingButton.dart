import 'package:flutter/material.dart';

class CustomFloatingButton extends StatelessWidget {
  final IconData icon;

  final VoidCallback onPressed;
  Color color;
  Color iconColor;
  CustomFloatingButton({
    this.icon = Icons.add,
    required this.onPressed,
    this.iconColor = Colors.white,
    this.color = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
        color: iconColor,
      ),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      elevation: 6.0,
      shape: CircleBorder(),
      fillColor: color,
      onPressed: onPressed,
    );
  }
}
