import 'package:flutter/material.dart';

class todoLine extends StatelessWidget {
  final String content;
  final bool isCheckd;
  final Color fontColor;

  const todoLine({
    super.key,
    required this.content,
    required this.isCheckd,
    required this.fontColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
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
                style: const TextStyle(
                  fontSize: 12,
                ),
              ),
            ],
          ),
          Transform.scale(
            scale: 1.4,
            child: Icon(
              isCheckd
                  ? Icons.check_box
                  : Icons.check_box_outline_blank_rounded,
              size: 16,
              fill: 1.0,
              color: isCheckd
                  ? fontColor
                  : Colors.grey.withOpacity(
                      0.5,
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
