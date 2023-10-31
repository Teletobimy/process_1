import 'package:flutter/material.dart';
import 'package:test_01/screens/myprofilepages/myprofile_page_controller.dart';

import '../colors.dart';
import 'moimpages/group_page_controller.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

int _selectedIndex = 0;

class _MainScreenState extends State<MainScreen> {
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        // toolbarHeight: 32,
        // title: Text("📚독서 한잔, 커피 한잔☕ "),
        // centerTitle: true,
        // // backgroundColor: TitleColor1,
        // leading: Builder(
        //     builder: (BuildContext context) => IconButton(
        //         tooltip: "북쉐어링",
        //         onPressed: () {
        //           Scaffold.of(context).openDrawer();
        //         },
        //         icon: Icon(Icons.menu_book_sharp))),
        // actions: [
        //   TextButton(
        //     onPressed: () {
        //       Navigator.push(context, MaterialPageRoute(builder: (context) {
        //         return Test1();
        //       }));
        //     },
        //     child: Text("action button"),
        //   ),
        //   SizedBox(
        //     width: 14,
        //   )
        // ],
        // ),
        // drawer: Drawer(
        //   child: ListView(
        //     padding: EdgeInsets.zero,
        //     children: <Widget>[
        //       DrawerHeader(
        //         decoration: BoxDecoration(
        //           color: TitleColor1,
        //         ),
        //         child: Text(
        //           'Drawer Header',
        //           style: TextStyle(
        //             color: Colors.white,
        //             fontSize: 24,
        //           ),
        //         ),
        //       ),
        //       ListTile(
        //         leading: Icon(Icons.message),
        //         title: Text('Messages'),
        //       ),
        //       ListTile(
        //         leading: Icon(Icons.account_circle),
        //         title: Text('Profile'),
        //       ),
        //       ListTile(
        //         leading: Icon(Icons.settings),
        //         title: Text('Settings'),
        //       ),
        //     ],
        //   ),
        // ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(width: 2),
              ),
              child: Center(
                child: Text(
                  '공지사항',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 5,
              decoration: BoxDecoration(
                border: Border.symmetric(horizontal: BorderSide(width: 1)),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/독커.jpg',
                  ),
                ),
              ),
              child: Center(
                child: Text("공지사항란"),
              ),
            ),
            // Container(
            //   color: Colors.grey,
            //   height: 10,
            // ),
            Container(
                height: 40,
                child: Center(
                    child: Text(
                  "내모임",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ))),
            Container(
              decoration: BoxDecoration(
                border: Border.symmetric(horizontal: BorderSide(width: 1)),
              ),
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) =>
                    ContainerElements(index: index),
                itemCount: 20,
              ),
            ),
            // Container(
            //   color: Colors.grey,
            //   height: 10,
            // ),
            Container(
                decoration: BoxDecoration(
                    border: Border.symmetric(horizontal: BorderSide(width: 1))),
                height: 40,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.search),
                          label: Text("모임찾기")),
                      Text(
                        "추천모임목록",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      TextButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.create),
                          label: Text("모임만들기")),
                    ])),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) =>
                    ContainerElements2(index: index),
                itemCount: 20,
              ),
            ),
            Container(
                decoration: BoxDecoration(
                    border: Border.symmetric(horizontal: BorderSide(width: 1))),
                height: 40,
                child: Center(
                    child: Text(
                  "정모목록",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ))),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 0.1),
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.amber,
                          ),
                          width: 100,
                          height: 100,
                        ),
                        Container(
                          height: 50,
                          child: Text("정모"),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 0.1),
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.amber,
                          ),
                          width: 100,
                          height: 100,
                        ),
                        Container(
                          height: 50,
                          child: Text("정모"),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 0.1),
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.amber,
                          ),
                          width: 100,
                          height: 100,
                        ),
                        Container(
                          height: 50,
                          child: Text("정모"),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 0.1),
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.amber,
                          ),
                          width: 100,
                          height: 100,
                        ),
                        Container(
                          height: 50,
                          child: Text("정모"),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 0.1),
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.amber,
                          ),
                          width: 100,
                          height: 100,
                        ),
                        Container(
                          height: 50,
                          child: Text("정모"),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ))
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          height: 69,
          child: Container(
            decoration: BoxDecoration(border: Border.all(width: 1)),
            child: Row(
              children: [
                //하단 버튼 1
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MainScreen(),
                        ),
                        (route) => false,
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.home), Text("홈")],
                    ),
                  ),
                ),
                Container(
                  height: double.infinity,
                  width: 2,
                  color: Colors.grey,
                ),
                //하단 버튼 2
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GroupPageControll(),
                        ),
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.group), Text("내모임")],
                    ),
                  ),
                ),
                Container(
                  height: double.infinity,
                  width: 2,
                  color: Colors.grey,
                ),
                //하단 버튼 3
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyprofilePageController(),
                        ),
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.person), Text("내정보")],
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

class ContainerElements extends StatelessWidget {
  final int index;
  const ContainerElements({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
          decoration: BoxDecoration(
              color: Colors.black26, borderRadius: BorderRadius.circular(10)),
          height: 100,
          child: IntrinsicHeight(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$index : ',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Text(
                index % 2 == 0 ? "게시글1" : "게시글2",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ],
          ))),
    );
  }
}

class ContainerElements2 extends StatelessWidget {
  final int index;
  const ContainerElements2({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: PRIMATY_COLOR),
              borderRadius: BorderRadius.circular(20)),
          height: 100,
          child: IntrinsicHeight(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$index : ',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              Text(
                index % 2 == 0 ? "모임1" : "모임2",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ],
          ))),
    );
  }
}
