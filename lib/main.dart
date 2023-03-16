import 'dart:async';

import 'package:flutter/material.dart';
import 'package:talenta_clone/announcement_page.dart';
import 'package:talenta_clone/components.dart';

void main() {
  runApp(const SplashScreen());
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Splash Screen',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const MyApp(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(120.0),
          color: Colors.white,
          child: Image.asset('assets/images/talenta-logo.png'),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Talenta Clone',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          bottomNavigationBar: Container(
            height: 78,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.home_work,
                        color: Colors.red,
                        size: 35,
                      ),
                    ),
                    const Text(
                      'Home',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.mail,
                        color: Colors.black45,
                        size: 35,
                      ),
                    ),
                    const Text(
                      'Inbox',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black45,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.person,
                        color: Colors.black45,
                        size: 35,
                      ),
                    ),
                    const Text(
                      'Account',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black45,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const AppHeader(
                  companyName: 'Hara HQ',
                  userName: 'Muhammad Rizkiansyah',
                  userPosition: 'CTO',
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: AppButtons(),
                ),
                AppHomeGroupHeader(
                  title: 'Announcement',
                  groupId: 'announcement',
                  toPage: const AnnouncementPage(),
                  children: Column(
                    children: const <Widget>[
                      AppHomeItem(
                        title:
                            '3 Upcoming event for you who work from Home (Speakmaster) and Batam...',
                        subTitle: '13 Mar 2023',
                      ),
                      AppHomeItem(
                        title:
                            '2 Upcoming event for you who work from Home (Speakmaster) and Batam...',
                        subTitle: '13 Feb 2023',
                      ),
                      AppHomeItem(
                        title:
                            '1 Upcoming event for you who work from Home (Speakmaster) and Batam...',
                        subTitle: '13 Jan 2023',
                      ),
                    ],
                  ),
                ),
                AppHomeGroupHeader(
                  title: 'Task',
                  groupId: 'task',
                  children: Padding(
                    padding: const EdgeInsets.only(
                      top: 5.0,
                      bottom: 15.0,
                    ),
                    child: Column(
                      children: const <Widget>[
                        Text(
                          'No task',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'You don\'t have any pending task',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                AppHomeGroupHeader(
                  title: 'Timesheet',
                  subTitle: 'Go to Time Tracker',
                  groupId: 'timesheet',
                  children: Padding(
                    padding: const EdgeInsets.only(
                      top: 5.0,
                      bottom: 15.0,
                    ),
                    child: Column(
                      children: const <Widget>[
                        Text(
                          'No timesheet',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'As you record timesheet, they\'ll show up here',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
