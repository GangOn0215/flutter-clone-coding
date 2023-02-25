import 'package:flutter/material.dart';

//ignore: must_be_immutable
class WeeklyDay extends StatelessWidget {
  final int weekOfDay; // 요일
  final String day; // 날짜
  final bool isToday;

  Color? fontColor;
  BoxDecoration? todayDeco;
  late String weekOfDayName;

  WeeklyDay({
    super.key,
    required this.weekOfDay,
    required this.day,
    required this.isToday,
    fontColor,
  }) {
    switch (weekOfDay) {
      case 1:
      case 7:
        // weekOfDayName = weekOfDay == 1 ? 'Mon' : 'Sun';
        weekOfDayName = weekOfDay == 1 ? '월' : '일';

        this.fontColor = Colors.black26;
        break;
      case 2:
      case 6:
        // weekOfDayName = weekOfDay == 2 ? 'Tue' : 'Sat';
        weekOfDayName = weekOfDay == 2 ? '화' : '토';

        this.fontColor = Colors.black38;
        break;
      case 3:
      case 5:
        // weekOfDayName = weekOfDay == 2 ? 'Wed' : 'Fri';
        weekOfDayName = weekOfDay == 3 ? '수' : '금';

        // this.fontColor = Colors.black87;
        this.fontColor = const Color(0XFF424242);
        break;
      case 4:
      default:
        // weekOfDayName = weekOfDay == 2 ? 'Thu' : '';
        weekOfDayName = weekOfDay == 4 ? '목' : '';
        this.fontColor = Colors.black;
        break;
    }

    if (isToday) {
      todayDeco = BoxDecoration(
        border: Border.all(
          color: Colors.grey.withOpacity(0.3),
          width: 3,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(30),
        ),
      );
    } else {
      todayDeco = const BoxDecoration();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 3,
        horizontal: 12,
      ),
      decoration: todayDeco,
      child: Column(
        children: [
          Text(
            weekOfDayName,
            style: TextStyle(
              color: fontColor,
              fontSize: 11,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            day,
            style: TextStyle(
              color: fontColor,
              fontSize: 11,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
