import 'package:flutter/material.dart';
import 'package:test_01/colors.dart';
import 'package:test_01/screens/main_screen.dart';
import 'package:test_01/screens/moimpages/group_screens/group_page_calendar.dart';
import 'package:test_01/screens/moimpages/group_screens/group_page_main.dart';

class GroupPageControll extends StatefulWidget {
  const GroupPageControll({super.key});

  @override
  State<GroupPageControll> createState() => _CalendarState();
}

int _selectedIndex = 0;

class _CalendarState extends State<GroupPageControll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
        title: Text("📚독서 한잔, 커피 한잔☕ "),
        centerTitle: true,
        // backgroundColor: TitleColor1,
        leading: Builder(
            builder: (BuildContext context) => IconButton(
                tooltip: "북쉐어링",
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(Icons.menu_book_sharp))),
        actions: [
          IconButton(
            onPressed: () => Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => MainScreen(),
              ),
              (route) => false,
            ),
            icon: Icon(Icons.home),
            style: ButtonStyle(iconSize: MaterialStateProperty.all(30)),
          ),
          SizedBox(
            width: 13,
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: TitleColor1,
              ),
              child: Text(
                'Drawer Header2',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages2'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile2'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings2'),
            ),
          ],
        ),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: '모임홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: '모임일정',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: '채팅',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped2,
      ),
    );
  }

  void _onItemTapped2(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

const List<Widget> _widgetOptions = <Widget>[
  GroupMainPage(),
  GroupCalander(),
  Text(
    'Index 2: School',
  ),
];
