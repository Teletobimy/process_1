import 'package:flutter/material.dart';
import 'package:test_01/colors.dart';

class GroupMainPage extends StatelessWidget {
  const GroupMainPage({super.key});

//모임홈화면 ing

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            height: 190,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/독커.jpg',
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "📚독서 한잔, 커피 한잔☕",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
          ),
          SizedBox(
            height: 20,
          ),

          SizedBox(
            height: 20,
          ),
          Container(
            height: 200,
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: ListView(
                children: [
                  Text("🌈안녕하세요❤📚독서 한잔, 커피 한잔☕시즌3으로 오신 여러분을 환영합니다"),
                  Text("🥰활동 : 자유독서, 지정독서, 자율스터디, 문화활동"),
                  Text("📔요일 : 현재 화,목,주말 및 공휴일"),
                  Text("📕시간 : 평일 오후 7시~9시, 주말 및 공휴일 오후 1~5시"),
                  Text("📗장소 : 빵쌤, 신리천카페거리, 센트럴파크 근처 카페 등"),
                  Text("💫모임 스케줄링은 단톡방에서 스프레드시트로 진행합니다👍🏻"),
                  Text("(스케줄은 매주 다를 수 있으니 자세한 사항은 시트를 참고해주세요 :D)"),
                  Text("🌸단톡방 참여 필수 📚독서 한잔, 커피 한잔☕시즌3"),
                  Text("🌸모임장 카카오 ID : khk9462"),
                  Text(""),
                  Text(""),
                ],
              ),
            ),
          ),
          Container(
            height: 10,
            width: double.infinity,
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text(
                            "자동강퇴설정 : on",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Icon(Icons.settings),
                        ],
                      )),
                  SizedBox(
                    width: 10,
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 10,
            width: double.infinity,
            color: Colors.white,
          ),
          //모임맴버 부분
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "모임맴버(40)",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.group),
                    label: Text("관리"))
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 40,
              itemBuilder: (context, index) {
                return UserContainer(
                  index: index,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class UserContainer extends StatelessWidget {
  final index;
  const UserContainer({super.key, this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
      child: Container(
        decoration: BoxDecoration(border: Border.all(width: 0.1)),
        width: double.infinity,
        height: 40,
        child: Row(
          children: [
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  width: 13,
                  height: 13,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1),
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.red),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(index % 2 == 0 ? Icons.person : Icons.person_2),
            SizedBox(
              width: 10,
            ),
            Text(
              index % 2 == 0 ? "${index + 1} 남자유저" : "${index + 1} 여자유저",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              width: 190,
            ),
            TextButton.icon(
                onPressed: () {}, icon: Icon(Icons.settings), label: Text("편집"))
          ],
        ),
      ),
    );
  }
}


//  WordBreakText(
  //   "🌈안녕하세요❤📚독서 한잔, 커피 한잔☕시즌3으로 오신 여러분을 환영합니다🥰📙 활동 : 자유독서, 지정독서, 자율스터디, 문화활동📔 요일 : 현재 화,목,주말 및 공휴일📕 시간 : 평일 오후 7시~9시, 주말 및 공휴일 오후 1~5시📗 장소 : 빵쌤, 신리천카페거리, 센트럴파크 근처 카페 등  💫모임 스케줄링은 단톡방에서 스프레드시트로 진행합니다👍🏻 (스케줄은 매주 다를 수 있으니 자세한 사항은 시트를 참고해주세요 :D) 🌸단톡방 참여 필수 📚독서 한잔, 커피 한잔☕시즌3 🌸모임장 카카오 ID : khk9462",
  //   style: TextStyle(fontSize: 14),
  // ), 