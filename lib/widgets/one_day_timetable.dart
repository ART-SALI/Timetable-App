import 'package:flutter/material.dart';

import 'lesson_container.dart';

class OneDayTimetable extends StatelessWidget {
  const OneDayTimetable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        LessonContainer(
          lesson: 'PE',
          lessonType: 'Practice',
          teacherName: 'Ivan Ivanovych',
          placeOfLesson: 'Gym',
          lessonNumber: 3,
        ),
        LessonContainer(
          lesson: 'PE',
          lessonType: 'Practice',
          teacherName: 'Ivan Ivanovych',
          placeOfLesson: 'Gym',
          lessonNumber: 3,
        ),
      ],
    );
  }
}