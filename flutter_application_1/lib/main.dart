import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/calendar_page.dart';
import 'package:flutter_application_1/pages/friends_page.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/settings_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;
  final screens = [
    HomePage(),
    CalendarPage(),
    FriendsPage(),
    SettingsPage(),
  ];


  @override
  Widget build(BuildContext context) => Scaffold(
    body: screens[index],
    bottomNavigationBar: NavigationBarTheme(
      data: NavigationBarThemeData(
        indicatorColor: Colors.blue.shade100,
        labelTextStyle: MaterialStateProperty.all(
          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),

      ),

      child: NavigationBar(
        height: 60,
        backgroundColor: Color(0xFFf1f5fb),
        selectedIndex: index,
        onDestinationSelected: (index) =>
          setState(() => this.index = index),

        destinations: [
          NavigationDestination( 
            icon: Icon(Icons.rocket_launch_outlined), 
            selectedIcon: Icon(Icons.rocket_launch_sharp),
            label: 'Home',
            ),
            NavigationDestination( 
            icon: Icon(Icons.calendar_month_outlined),
            selectedIcon: Icon(Icons.calendar_month), 
            label: 'Calendar',
            ),
            NavigationDestination( 
            icon: Icon(Icons.people_alt_outlined),
            selectedIcon: Icon(Icons.people_alt), 
            label: 'Friends',
            ),
            NavigationDestination( 
            icon: Icon(Icons.settings_suggest_outlined),
            selectedIcon: Icon(Icons.settings_suggest_rounded), 
            label: 'Settings',
            ),
        ],

      )

    ),
  );
}