import 'package:flutter/material.dart';
import 'package:project_7/widgets/info_row.dart';

import '../ timetable/timetable_lessons.dart';

class LessonContainer extends StatelessWidget {
  const LessonContainer({
    super.key, required this.lesson, required this.lessonType, required this.teacherName, required this.placeOfLesson, required this.lessonNumber,
  });

  final String lesson;
  final String lessonType;
  final String teacherName;
  final String placeOfLesson;
  final int lessonNumber;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 12.0),
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      color: Theme.of(context).colorScheme.primary,
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InfoRow(leftText: lesson, rightText: lessonType,),
          SizedBox(height: 12.0,),
          InfoRow(leftText: lessonNumber.toString(), rightText: timetableOfLessons[lessonNumber],),
          SizedBox(height: 12.0,),
          InfoRow(leftText: teacherName, rightText: placeOfLesson,),
        ],
      ),
    );
  }
}