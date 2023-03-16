import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RequestButton extends StatelessWidget {
  final Icon icon;
  final String title;

  const RequestButton({required this.icon, required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.all(14.0),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            style: BorderStyle.none,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 8.0, right: 8.0, bottom: 8.0),
              child: icon,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  'Request',
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Colors.black54,
                  ),
                ),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 17.0,
                    color: Colors.black54,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 5.0,
            ),
          ],
        ),
      ),
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return Expanded(
              child: AlertDialog(
                title: const Text('Request Button'),
                content: Text('open: $title'),
              ),
            );
          },
        );
      },
    );
  }
}

class AppHeader extends StatelessWidget {
  final String companyName;
  final String userName;
  final String userPosition;

  const AppHeader(
      {required this.companyName,
      required this.userName,
      required this.userPosition,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red.shade800,
      height: 230.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              left: 15.0,
              right: 15.0,
              top: 15.0,
            ),
            child: Text(
              companyName,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      userName,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 26.0,
                      ),
                    ),
                    Text(
                      userPosition,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                GestureDetector(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      'assets/images/placeholder-avatar.png',
                      width: 64.0,
                      height: 64.0,
                    ),
                  ),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const Expanded(
                          child: AlertDialog(
                            title: Text('User'),
                            content: Text('Open Profile'),
                          ),
                        );
                      },
                    );
                  },
                )
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(
                    top: 15.0,
                    bottom: 15.0,
                    left: 15.0,
                  ),
                  child: Row(
                    children: const <Widget>[
                      RequestButton(
                        icon: Icon(CupertinoIcons.money_dollar),
                        title: 'Reimbursement',
                      ),
                      SizedBox(
                        width: 12.0,
                      ),
                      RequestButton(
                        icon: Icon(CupertinoIcons.folder),
                        title: 'Time Off',
                      ),
                      SizedBox(
                        width: 12.0,
                      ),
                      RequestButton(
                        icon: Icon(CupertinoIcons.location),
                        title: 'Attendance',
                      ),
                      SizedBox(
                        width: 12.0,
                      ),
                      RequestButton(
                        icon: Icon(CupertinoIcons.briefcase),
                        title: 'Change Shift',
                      ),
                      SizedBox(
                        width: 12.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AppButton extends StatelessWidget {
  final Icon icon;
  final String title;
  const AppButton({required this.icon, required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return Expanded(
              child: AlertDialog(
                title: const Text('Menu Button'),
                content: Text('open: $title'),
              ),
            );
          },
        );
      },
      child: Container(
        width: 120.0,
        height: 120.0,
        padding: const EdgeInsets.only(
          top: 15.0,
        ),
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                child: icon,
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                title,
                style: const TextStyle(fontSize: 12),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AppButtonListTop extends StatelessWidget {
  const AppButtonListTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        AppButton(
          icon: Icon(
            CupertinoIcons.doc_text_fill,
            color: Colors.green,
            size: 36,
          ),
          title: 'Reimbursement',
        ),
        AppButton(
          icon: Icon(
            CupertinoIcons.clock_fill,
            color: Colors.orange,
            size: 36,
          ),
          title: 'Attendance Log',
        ),
        AppButton(
          icon: Icon(
            CupertinoIcons.calendar_today,
            color: Colors.lightBlue,
            size: 36,
          ),
          title: 'Calendar',
        ),
        AppButton(
          icon: Icon(
            CupertinoIcons.doc_fill,
            color: Color.fromARGB(255, 201, 198, 15),
            size: 36,
          ),
          title: 'My Files',
        ),
      ],
    );
  }
}

class AppButtonListBottom extends StatelessWidget {
  const AppButtonListBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        AppButton(
          icon: Icon(
            CupertinoIcons.calendar_badge_plus,
            color: Colors.blue,
            size: 36,
          ),
          title: 'Time Off',
        ),
        AppButton(
          icon: Icon(
            CupertinoIcons.map_pin_ellipse,
            color: Color.fromARGB(255, 201, 198, 15),
            size: 36,
          ),
          title: 'Live Attendance',
        ),
        AppButton(
          icon: Icon(
            CupertinoIcons.ticket_fill,
            color: Colors.green,
            size: 36,
          ),
          title: 'My Payslip',
        ),
        AppButton(
          icon: Icon(
            CupertinoIcons.doc_richtext,
            color: Colors.purple,
            size: 36,
          ),
          title: 'Forms',
        ),
      ],
    );
  }
}

class AppButtons extends StatelessWidget {
  const AppButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260.0,
      padding: const EdgeInsets.only(top: 15.0),
      color: const Color.fromRGBO(240, 240, 240, 1),
      child: Column(
        children: const <Widget>[
          AppButtonListTop(),
          AppButtonListBottom(),
        ],
      ),
    );
  }
}

class AppHomeGroupHeader extends StatelessWidget {
  final String title;
  final String groupId;
  final dynamic children;
  final String subTitle;
  final dynamic toPage;

  const AppHomeGroupHeader({
    required this.title,
    required this.groupId,
    this.children,
    this.subTitle = "",
    super.key,
    this.toPage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10.0,
        right: 10.0,
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              left: 10.0,
              right: 10.0,
              top: 27.0,
              bottom: 27.0,
            ),
            child: Row(
              children: <Widget>[
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: toPage.runtimeType == Null
                      ? () {}
                      : () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => toPage),
                          );
                        },
                  child: Text(
                    subTitle != "" ? subTitle : 'View All',
                    style: const TextStyle(
                      color: Colors.lightBlue,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10.0,
              right: 10.0,
              top: 5.0,
              bottom: 15.0,
            ),
            child: children,
          ),
        ],
      ),
    );
  }
}

class AppHomeItem extends StatelessWidget {
  final String title;
  final String subTitle;

  const AppHomeItem({super.key, required this.title, required this.subTitle});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10.0,
        bottom: 10.0,
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          SizedBox(
            width: 80.0,
            child: Text(
              subTitle,
              style: const TextStyle(
                color: Colors.black54,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AppListItem extends StatelessWidget {
  final String title;
  final String userName;
  final String date;
  final String content;

  const AppListItem({
    required this.title,
    required this.userName,
    required this.date,
    required this.content,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10.0,
        right: 10.0,
        bottom: 25.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  right: 10.0,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    'assets/images/placeholder-avatar.png',
                    width: 45.0,
                    height: 45.0,
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'By $userName',
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.black54,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 60.0,
                child: Expanded(
                  child: Text(
                    date,
                    textAlign: TextAlign.end,
                    style: const TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            content,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}
