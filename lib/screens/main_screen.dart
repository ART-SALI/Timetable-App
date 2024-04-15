import 'package:flutter/material.dart';
import 'package:project_7/for_http/fetch_album.dart';
import 'package:project_7/screens/pages/day_timetable.dart';
import 'package:project_7/screens/pages/week_timetable.dart';
import 'package:project_7/widgets/timetable_appbar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  int _pageIndex = 0;
  late TabController tabController;

  void _onItemTapped(int index) {
    setState(() {
      _pageIndex = index;
    });
    tabController.animateTo(_pageIndex);
  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: body.length, vsync: this);
    tabController.addListener(() {
      setState(() {
        _pageIndex = tabController.index;
      });
    });
    futureAlbum = fetchAlbum();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  List<Widget> body = [DayTimetable(), WeekTimetable()];
  late Future<Album> futureAlbum;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TimetableAppBar(futureAlbum: futureAlbum),
      body: TabBarView(
        controller: tabController,
        children: body,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.view_day,
            ),
            label: 'Day timetable',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.view_week,
            ),
            label: 'Week timetable',
          ),
        ],
        currentIndex: _pageIndex,
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        onTap: _onItemTapped,
      ),
    );
  }
}
