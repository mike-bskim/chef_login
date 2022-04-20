import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Widget image;
  final Widget text;
  final Color backgroundColor;
  final double radius;
  final VoidCallback onPressed;

  const MyButton(
      {Key? key,
      required this.image,
      required this.text,
      required this.backgroundColor,
      required this.radius,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          image,
          text,
          Opacity(
            opacity: 0.0,
            child: image,
          ),
        ],
      ),
      style: ElevatedButton.styleFrom(
        primary: backgroundColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
          Radius.circular(radius),
        )),
        minimumSize: const Size(double.infinity, 50.0),
      ),
    );
  }
}
