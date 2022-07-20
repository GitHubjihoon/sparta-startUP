import 'package:flutter/material.dart';

void main() {
  // runApp(MyApp());
  // runApp(LogIn());
  runApp(Review());
}

// // 로그인 (회원가입)
// class LogIn extends StatelessWidget {
//   const LogIn({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         // appBar: AppBar(
//         //   centerTitle: true,
//         //   title: Text(
//         //     "Hello Flutter",
//         //     style: TextStyle(fontSize: 28),
//         //   ),
//         // ),
//         body: SafeArea(
//           // SingleChildScrollView()를 사용하면플러터 입장에서 어디가 중앙인지 알 수 없다.
//           child: Padding(
//             padding: const EdgeInsets.all(16),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.end,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Column(
//                   children: [
//                     Container(
//                       width: 260,
//                       child: Text(
//                         "당신의 반려동물과 함께 할 특화된 전문 주치의를 찾아드려요.",
//                         style: TextStyle(
//                           fontSize: 14,
//                           color: Color(0xff999999),
//                           fontWeight: FontWeight.w400,
//                         ),
//                       ),
//                     ),
//                     Container(
//                       child: Text(
//                         "마이펫 닥터 PNG",
//                         textAlign: TextAlign.start, // 왜 왼쪽으로 안 붙지?
//                         style: TextStyle(
//                           fontSize: 36,
//                           color: Color(0xff73E4FD),
//                           fontWeight: FontWeight.w700,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 Container(
//                   // 중간 여백
//                   height: 100,
//                 ),
//                 Container(
//                   width: double.infinity,
//                   height: 46,
//                   margin: EdgeInsets.only(top: 0),
//                   child: ElevatedButton.icon(
//                     onPressed: () {},
//                     icon: Icon(Icons.save),
//                     // Image.asset('assets/파일명.확장자),  /// 디자이너가 작업한 아이콘 적용 방법
//                     label: Text(
//                       "구글 계정으로 가입",
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.w700,
//                       ),
//                     ),
//                     style: ElevatedButton.styleFrom(
//                       primary: Color(0xffF0696B),
//                       onSurface: Colors.grey[600], // 비활성화된 버튼 색도 바꿀 수 있다.
//                     ),
//                   ),
//                 ),
//                 Container(
//                   width: double.infinity,
//                   height: 46,
//                   margin: EdgeInsets.only(top: 20),
//                   child: ElevatedButton.icon(
//                     onPressed: () {},
//                     icon: Icon(Icons.save),
//                     // Image.asset('assets/파일명.확장자),  /// 디자이너가 작업한 아이콘 적용 방법
//                     label: Text(
//                       "네이버 계정으로 가입",
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.w700,
//                       ),
//                     ),
//                     style: ElevatedButton.styleFrom(
//                       primary: Color(0xff1EAC43),
//                       onSurface: Colors.grey[600], // 비활성화된 버튼 색도 바꿀 수 있다.
//                     ),
//                   ),
//                 ),
//                 Container(
//                   width: double.infinity,
//                   height: 46,
//                   margin: EdgeInsets.only(top: 20),
//                   child: ElevatedButton.icon(
//                     onPressed: () {},
//                     icon: Icon(Icons.save),
//                     // Image.asset('assets/파일명.확장자),  /// 디자이너가 작업한 아이콘 적용 방법
//                     label: Text(
//                       "카카오 계정으로 가입",
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.w700,
//                       ),
//                     ),
//                     style: ElevatedButton.styleFrom(
//                       primary: Color(0xffFFE429),
//                       onSurface: Colors.grey[600], // 비활성화된 버튼 색도 바꿀 수 있다.
//                     ),
//                   ),
//                 ),
//                 Container(
//                   // 하단 여백
//                   height: 50,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// // 홈
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Color(0xff73E4FD),
//           centerTitle: true,
//           title: Text(
//             "우리집 주소",
//             style: TextStyle(
//               fontSize: 16,
//               fontWeight: FontWeight.w700,
//             ),
//           ),
//           actions: [
//             IconButton(
//               iconSize: 35,
//               icon: Icon(Icons.account_circle),
//               onPressed: null,
//             ),
//           ],
//         ),
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 16),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                     color: Colors.grey,
//                   ),
//                   width: double.infinity,
//                   height: 300,
//                   margin: EdgeInsets.only(top: 16),
//                   // 배경에 이미지 삽입 하는 기능 미리 구현
//                   // decoration: BoxDecoration(
//                   //   image: DecorationImage(
//                   //     fit: BoxFit.cover,
//                   //     image: AssetImage('assets/background.jpeg'), // 배경 이미지
//                   //   ),
//                   // ),
//                   child: Align(
//                     alignment: Alignment.bottomRight,
//                     child: Padding(
//                       padding: const EdgeInsets.fromLTRB(0, 0, 30, 10),
//                       child: ElevatedButton(
//                         onPressed: () {},
//                         child: Text(
//                           '주치의 찾기',
//                           style: TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.w700,
//                           ),
//                         ),
//                         style: ElevatedButton.styleFrom(
//                           primary: Color(0xff344047),
//                           minimumSize: Size(109, 32),
//                           shape: RoundedRectangleBorder(
//                               // shape : 버튼의 모양을 디자인 하는 기능
//                               borderRadius: BorderRadius.circular(25.0)),
//                           // maximumSize: Size(100, 50),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                     color: Colors.grey,
//                   ),
//                   width: double.infinity,
//                   height: 150,
//                   margin: EdgeInsets.only(top: 16),
//                   // 배경에 이미지 삽입 하는 기능 미리 구현
//                   // decoration: BoxDecoration(
//                   //   image: DecorationImage(
//                   //     fit: BoxFit.cover,
//                   //     image: AssetImage('assets/background.jpeg'), // 배경 이미지
//                   //   ),
//                   // ),
//                   child: Align(
//                     child: Text(
//                       "과잉진료 사례 신고해주세요!",
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.w700,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                     color: Colors.grey,
//                   ),
//                   width: double.infinity,
//                   height: 300,
//                   margin: EdgeInsets.only(top: 16),
//                   // 배경에 이미지 삽입 하는 기능 미리 구현
//                   // decoration: BoxDecoration(
//                   //   image: DecorationImage(
//                   //     fit: BoxFit.cover,
//                   //     image: AssetImage('assets/background.jpeg'), // 배경 이미지
//                   //   ),
//                   // ),
//                   child: Align(
//                     alignment: Alignment.bottomRight,
//                     child: Padding(
//                       padding: const EdgeInsets.fromLTRB(0, 0, 30, 10),
//                       child: ElevatedButton(
//                         onPressed: () {},
//                         child: Text(
//                           '진료내역',
//                           style: TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.w700,
//                           ),
//                         ),
//                         style: ElevatedButton.styleFrom(
//                           primary: Color(0xff344047),
//                           minimumSize: Size(109, 32),
//                           shape: RoundedRectangleBorder(
//                               // shape : 버튼의 모양을 디자인 하는 기능
//                               borderRadius: BorderRadius.circular(25.0)),
//                           // maximumSize: Size(100, 50),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Container(
//                   height: 16,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// 홈
class Review extends StatelessWidget {
  const Review({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff73E4FD),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_sharp,
            ),
            color: Colors.white,
            onPressed: () {},
          ),
          title: Text(
            "리뷰 작성하기",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          actions: [
            IconButton(
              iconSize: 35,
              icon: Icon(Icons.account_circle),
              onPressed: null,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 30,
                  margin: EdgeInsets.only(top: 16),
                  child: Text(
                    "진료는 어떠셨나요?",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),

                  // Align(
                  //   child: Text("진료는 어떠셨나요?"),
                  // ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey,
                  ),
                  width: double.infinity,
                  height: 150,
                  margin: EdgeInsets.only(top: 16),
                  // 배경에 이미지 삽입 하는 기능 미리 구현
                  // decoration: BoxDecoration(
                  //   image: DecorationImage(
                  //     fit: BoxFit.cover,
                  //     image: AssetImage('assets/background.jpeg'), // 배경 이미지
                  //   ),
                  // ),
                  child: Align(
                    child: Text(
                      "과잉진료 사례 신고해주세요!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey,
                  ),
                  width: double.infinity,
                  height: 300,
                  margin: EdgeInsets.only(top: 16),
                  // 배경에 이미지 삽입 하는 기능 미리 구현
                  // decoration: BoxDecoration(
                  //   image: DecorationImage(
                  //     fit: BoxFit.cover,
                  //     image: AssetImage('assets/background.jpeg'), // 배경 이미지
                  //   ),
                  // ),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 30, 10),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          '진료내역',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff344047),
                          minimumSize: Size(109, 32),
                          shape: RoundedRectangleBorder(
                              // shape : 버튼의 모양을 디자인 하는 기능
                              borderRadius: BorderRadius.circular(25.0)),
                          // maximumSize: Size(100, 50),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 16,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
