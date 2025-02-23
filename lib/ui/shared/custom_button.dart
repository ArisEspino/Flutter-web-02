import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.color = Colors.amber,
  });

  final String text;
  final Color color;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => onPressed(),
      style: TextButton.styleFrom(foregroundColor: color),
      child: Padding(padding: const EdgeInsets.all(10), child: Text(text)),
    );
  }
}
