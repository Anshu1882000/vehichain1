import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {
  final String title;
  final Color titleColor;
  final Color buttonColor;
  final bool enabled;
  final onTap;
  final bool fill;
  final bool isRounded;
  final Color borderColor;

  CustomFlatButton(
      {this.buttonColor = Colors.black,
      required this.title,
      this.titleColor = Colors.white,
      this.enabled = true,
      required this.onTap,
      this.fill = true,
      this.isRounded = false,
      this.borderColor = const Color.fromRGBO(196, 196, 196, 1)
    });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: enabled ? onTap : null,
      child: Container(
        width: double.infinity,
        height: 54,
        decoration: BoxDecoration(
            color: fill
                ? (enabled
                    ? buttonColor
                    : const Color.fromRGBO(229, 229, 229, 1))
                : Colors.white,
            border: fill
                ? null
                : Border.all(color: borderColor),
            borderRadius: BorderRadius.circular(isRounded ? 27 : 5)),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: fill
                  ? (enabled
                      ? titleColor
                      : const Color.fromRGBO(196, 196, 196, 1))
                  : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
