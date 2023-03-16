import 'package:flutter/material.dart';
import 'package:talenta_clone/components.dart';

class AnnouncementPage extends StatelessWidget {
  const AnnouncementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          title: const Text('Announcement'),
          backgroundColor: Colors.red,
          leading: GestureDetector(
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.only(
                  top: 10.0,
                  bottom: 10.0,
                ),
                child: Text(
                  'ini title annoucement',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: const <Widget>[
                  AppListItem(
                    title:
                        '3 Upcoming event for you who work from Home(Speakmaster) and',
                    userName: 'Cut Hawa Aulia Ramadhina',
                    date: '16 Mar',
                    content: 'Hi temen2 ku yang baik hati',
                  ),
                  AppListItem(
                    title:
                        '2 Upcoming event for you who work from Home(Speakmaster) and',
                    userName: 'Cut Sarah Aliya Najja',
                    date: '13 Mar',
                    content: 'Hi orang tua ku yang baik hati',
                  ),
                  AppListItem(
                    title:
                        '1 Upcoming event for you who work from Home(Speakmaster) and so much title here',
                    userName: 'Cut Rumaisha',
                    date: '10 Mar',
                    content: 'Hi kakak2 ku yang baik hati',
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
