import 'package:clone_app1/widgets/todo_line.dart';
import 'package:clone_app1/widgets/weekly_day.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Color _colorMain = const Color(0xFFE75480);
  final Color _colorGreen = Colors.green.withOpacity(0.7);
  final Color _colorOrange = Colors.amber.withOpacity(0.7);

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            '23-02-25',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
          ),
          elevation: 1,
          leading: const Icon(
            Icons.collections_bookmark_rounded,
            color: Colors.grey,
          ),
          actions: const [
            Icon(
              Icons.settings,
              color: Colors.grey,
            ),
            SizedBox(
              width: 10,
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 8,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  WeeklyDay(weekOfDay: 1, day: '20', isToday: false),
                  WeeklyDay(weekOfDay: 2, day: '21', isToday: false),
                  WeeklyDay(weekOfDay: 3, day: '22', isToday: false),
                  WeeklyDay(weekOfDay: 4, day: '23', isToday: false),
                  WeeklyDay(weekOfDay: 5, day: '24', isToday: false),
                  WeeklyDay(weekOfDay: 6, day: '25', isToday: true),
                  WeeklyDay(weekOfDay: 7, day: '26', isToday: false),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 0,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      'D+6',
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Flutter 시작일',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Color(0XFFfbf7f4),
                ),
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 20,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '[루빗] Clone Coding',
                          style: TextStyle(
                            color: _colorGreen,
                            fontSize: 12,
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
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        todoLine(
                          content: '# 1.0 Main',
                          isCheckd: true,
                          fontColor: _colorOrange,
                        ),
                        const Divider(
                          thickness: 0.3,
                          color: Colors.grey,
                        ),
                        todoLine(
                          content: '# 4.0 State',
                          isCheckd: false,
                          fontColor: _colorGreen,
                        ),
                        todoLine(
                          content: '# 4.0 State',
                          isCheckd: false,
                          fontColor: _colorGreen,
                        ),
                        todoLine(
                          content: '# 4.0 State',
                          isCheckd: false,
                          fontColor: _colorGreen,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
