import 'package:flutter/material.dart';

class todoLine extends StatelessWidget {
  final String content;
  final bool isCheckd;
  final Color fontColor;

  late IconData icon;
  late Color iconColor;
  late TextStyle textStyle;

  todoLine({
    super.key,
    required this.content,
    required this.isCheckd,
    required this.fontColor,
  }) {
    textStyle = const TextStyle(
      fontSize: 14,
    );

    if (isCheckd) {
      icon = Icons.check_box;
      iconColor = fontColor;
      textStyle = const TextStyle(
        fontSize: 14,
        decoration: TextDecoration.lineThrough,
        color: Colors.grey,
      );
    } else {
      icon = Icons.check_box_outline_blank_rounded;
      iconColor = Colors.grey.withOpacity(0.5);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.square_rounded,
                size: 5,
                color: fontColor,
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                content,
                style: textStyle,
              ),
            ],
          ),
          Transform.scale(
            scale: 1.4,
            child: Icon(
              icon,
              size: 16,
              fill: 1.0,
              color: iconColor,
            ),
          ),
        ],
      ),
    );
  }
}
