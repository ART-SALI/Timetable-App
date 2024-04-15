import 'package:flutter/material.dart';
import 'package:project_7/widgets/day_lessons.dart';

class WeekLessons extends StatelessWidget {
  const WeekLessons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Text('Monday'),
        DayLessons(),
        Text("Tuesday"),
        DayLessons(),
        Text("Wednesday"),
        DayLessons(),
        Text("Thursday"),
        DayLessons(),
        Text("Friday"),
        DayLessons(),
      ],
    );
  }
}