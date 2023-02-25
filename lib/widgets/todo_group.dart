import 'package:flutter/material.dart';

class TodoGroup extends StatelessWidget {
  final List<Widget> todos;
  final bool isGroup;
  bool isDrop;
  String groupName;
  Color? color;
  late Row groupTopHeader;

  TodoGroup({
    super.key,
    this.groupName = '',
    this.color,
    this.isDrop = false,
    required this.todos,
    required this.isGroup,
  }) {
    if (isGroup) {
      groupTopHeader = Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            groupName,
            style: TextStyle(
              color: color,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
          Transform.scale(
            scale: 2.2,
            child: Icon(
              Icons.arrow_drop_up_outlined,
              color: Colors.grey.withOpacity(0.5),
              size: 16,
            ),
          ),
        ],
      );
    } else {
      groupTopHeader = const Row();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        groupTopHeader,
        SizedBox(
          height: isGroup ? 20 : 0,
        ),
        Column(
          children: todos,
        ),
        const Divider(
          thickness: 0.3,
          color: Colors.grey,
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
