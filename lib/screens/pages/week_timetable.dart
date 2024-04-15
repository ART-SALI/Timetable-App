import 'package:flutter/material.dart';
import 'package:project_7/widgets/week_lessons.dart';

class WeekTimetable extends StatelessWidget {
  const WeekTimetable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: Column(
          children: [
              SizedBox(
                height: 32,
                child: ListView(
                  children: const [
                    TabBar(
                      tabs: [
                        Tab(icon: Text("Week 1")),
                        Tab(icon: Text("Week 2")),
                        Tab(icon: Text("Week 3")),
                        Tab(icon: Text("Week 4")),
                        Tab(icon: Text("Week 5")),
                      ],
                      isScrollable: true,
                    ),
                  ],
                ),
              ),

            const Flexible(
              child: TabBarView(
                children: [
                  WeekLessons(),
                  WeekLessons(),
                  WeekLessons(),
                  WeekLessons(),
                  WeekLessons(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}




