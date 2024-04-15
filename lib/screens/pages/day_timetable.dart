
import 'package:flutter/material.dart';
import 'package:project_7/widgets/one_day_timetable.dart';

class DayTimetable extends StatelessWidget {
  const DayTimetable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: Column(
          children: [
            Flexible(
              child: Container(
                height: 32,
                child: ListView(
                  children: const [
                    TabBar(
                      tabs: [
                        Tab(icon: Text("Monday")),
                        Tab(icon: Text("Tuesday")),
                        Tab(icon: Text("Wednesday")),
                        Tab(icon: Text("Thursday")),
                        Tab(icon: Text("Friday")),
                      ],
                      isScrollable: true,
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              child: Container(
                child: const TabBarView(
                  children: [
                    OneDayTimetable(),
                    OneDayTimetable(),
                    OneDayTimetable(),
                    OneDayTimetable(),
                    OneDayTimetable(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


