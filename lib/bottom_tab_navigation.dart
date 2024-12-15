import 'package:calendar/Presentation/calendar_page.dart';
import 'package:calendar/Presentation/schedule_list_page.dart';
import 'package:calendar/Presentation/settings_page.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:easy_animate/animation/pulse_animation.dart';
import 'package:easy_animate/enum/animate_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_app_bar/flutter_gradient_app_bar.dart';

class BottomTabPage extends StatefulWidget {
  const BottomTabPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _BottomTabPageState();
  }
}

class _BottomTabPageState extends State<BottomTabPage> {
  int _currentIndex = 0;
  final _pageWidgets = [
    _PageWidgets(
      title: 'カレンダー',
      widget: const CalendarPage(),
    ),
    _PageWidgets(
      title: '予定一覧',
      widget: const ScheduleListPage(),
    ),
    _PageWidgets(
      title: '設定',
      widget: const SettingsPage(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        gradient: const LinearGradient(
          colors: [Colors.blue, Colors.red, Colors.green, Colors.purple],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        title: Text(
          _pageWidgets[_currentIndex].title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 26,
          ),
        ),
      ),
      body: _pageWidgets[_currentIndex].widget,
      bottomNavigationBar: PulseAnimation(
        animateType: AnimateType.loop,
        child: ConvexAppBar(
          gradient: const LinearGradient(
            colors: [Colors.blue, Colors.red, Colors.green, Colors.purple],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          style: TabStyle.reactCircle,
          items: const [
            TabItem(icon: Icons.calendar_month, title: 'カレンダー'),
            TabItem(icon: Icons.schedule, title: '予定一覧'),
            TabItem(icon: Icons.build, title: '設定'),
          ],
          onTap: (int index) => setState(() => _currentIndex = index),
        ),
      ),
    );
  }
}

class _PageWidgets {
  _PageWidgets({
    required this.title,
    required this.widget,
  });

  String title;
  Widget widget;
}
