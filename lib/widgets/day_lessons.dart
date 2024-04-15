import 'package:flutter/material.dart';
import 'package:project_7/widgets/lesson_container.dart';

class DayLessons extends StatelessWidget {
  const DayLessons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
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
