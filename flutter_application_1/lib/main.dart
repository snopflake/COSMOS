import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/calendar_page.dart';
import 'package:flutter_application_1/pages/friends_page.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/settings_page.dart';


void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MainPage(),
  ));
}


class MainPage extends StatefulWidget {
  const MainPage({super.key});
  @override
  _MainPageState createState() => _MainPageState();
  Widget build(BuildContext context){
    return const MaterialApp(
      title: 'COSMOS: Mood Tracker',
    );
  }
}

class _MainPageState extends State<MainPage> {
  int index = 0;
  final screens = [
    const HomePage(),
    const CalendarPage(),
    const FriendsPage(),
    const SettingsPage(),
  ];


  @override
  Widget build(BuildContext context) => Scaffold(
    body: screens[index],
    bottomNavigationBar: NavigationBarTheme(
      data: NavigationBarThemeData(
        indicatorColor: Colors.orange.shade100,
        labelTextStyle: MaterialStateProperty.all(
          const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),

      ),

      child: NavigationBar(
        height: 60,
        backgroundColor: const Color(0xFFf1f5fb),
        selectedIndex: index,
        onDestinationSelected: (index) =>
          setState(() => this.index = index),

        destinations: const [
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