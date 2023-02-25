import 'package:clone_app1/widgets/todo_group.dart';
import 'package:clone_app1/widgets/todo_line.dart';
import 'package:clone_app1/widgets/weekly_day.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Color _colorMain = const Color(0xFFE75480);
  final Color _colorGreen = Colors.green.withOpacity(0.7);
  final Color _colorLightGreen = Colors.green.withOpacity(0.5);
  final Color _colorOrange = Colors.orange.withOpacity(0.7);

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
              Icons.miscellaneous_services_rounded,
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
                decoration: BoxDecoration(
                  // color: Color(0XFFfbf7f4),
                  color: _colorMain.withOpacity(0.1),
                ),
                height: 10,
              ),
              Expanded(
                child: ScrollConfiguration(
                  behavior: const ScrollBehavior().copyWith(overscroll: false),
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 20,
                        ),
                        child: Column(
                          children: [
                            TodoGroup(
                              groupName: '[루빗] Clone Coding',
                              color: _colorLightGreen,
                              isDrop: true,
                              isGroup: true,
                              todos: [
                                todoLine(
                                  content: '# 1.0 Main',
                                  isCheckd: false,
                                  fontColor: _colorLightGreen,
                                ),
                              ],
                            ),
                            TodoGroup(
                              groupName: '노마드 코더',
                              color: _colorOrange,
                              isDrop: true,
                              isGroup: true,
                              todos: [
                                todoLine(
                                  content: '# 4.0 State',
                                  isCheckd: true,
                                  fontColor: _colorOrange,
                                ),
                                todoLine(
                                  content: '# 4.1 setState',
                                  isCheckd: false,
                                  fontColor: _colorOrange,
                                ),
                              ],
                            ),
                            TodoGroup(
                              groupName: '운동',
                              color: _colorGreen,
                              isDrop: true,
                              isGroup: true,
                              todos: [
                                todoLine(
                                  content: 'PushUp 10',
                                  isCheckd: true,
                                  fontColor: _colorGreen,
                                ),
                                todoLine(
                                  content: 'Runday 실천',
                                  isCheckd: false,
                                  fontColor: _colorGreen,
                                ),
                              ],
                            ),
                            TodoGroup(
                              isDrop: true,
                              isGroup: false,
                              todos: [
                                todoLine(
                                  content: 'PushUp 10',
                                  isCheckd: true,
                                  fontColor: _colorMain,
                                ),
                                todoLine(
                                  content: 'Watching 1 Movie',
                                  isCheckd: false,
                                  fontColor: _colorMain,
                                ),
                                todoLine(
                                  content: '[Overwatch] Daily Mission',
                                  isCheckd: false,
                                  fontColor: _colorMain,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: _colorMain,
          child: const Icon(
            Icons.add,
            size: 30,
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: _colorMain,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.stacked_bar_chart_sharp),
              label: 'Statistics',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit_rounded),
              label: 'My Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Setting',
            ),
          ],
        ),
      ),
    );
  }
}
