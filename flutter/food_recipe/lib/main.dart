import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(), // 홈페이지 보여주기
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 음식 사진 데이터
    List<Map<String, dynamic>> dataList = [
      {
        "category": "수제버거",
        "imgUrl": "https://i.ibb.co/pnZK1rz/burger.jpg",
      },
      {
        "category": "건강식",
        "imgUrl": "https://i.ibb.co/7KLJjJV/salad.jpg",
      },
      {
        "category": "한식",
        "imgUrl": "https://i.ibb.co/0V4RVK4/korean-food.jpg",
      },
      {
        "category": "디저트",
        "imgUrl": "https://i.ibb.co/HhGRhds/dessert.jpg",
      },
      {
        "category": "피자",
        "imgUrl": "https://i.ibb.co/QdDtTvt/pizza.jpg",
      },
      {
        "category": "볶음밥",
        "imgUrl": "https://i.ibb.co/gt9npFZ/stir-fried-rice.jpg",
      },
    ];

    // 화면에 보이는 영역
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Food Recipe",
          style: TextStyle(
            color: Colors.black,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              print("go my page");
            },
            icon: Icon(
              Icons.person_outline,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextField(
              decoration: InputDecoration(
                hintText: "상품을 검색해주세요.",
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    print("돋보기 아이콘 클릭");
                  },
                ),
              ),
            ),
          ),
          Divider(height: 1),
          Expanded(
            child: ListView.builder(
              itemCount: dataList.length,
              itemBuilder: (context, index) {
                Map<String, dynamic> data = dataList[index];
                String category = data["category"];
                String imgUrl = data["imgUrl"];
                return Card(
                  margin: const EdgeInsets.all(8),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.network(
                        imgUrl,
                        width: double.infinity,
                        height: 120,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        width: double.infinity,
                        height: 120,
                        color: Colors.black.withOpacity(0.5),
                      ),
                      Text(
                        category,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              margin: const EdgeInsets.all(0),
              decoration: BoxDecoration(
                color: Colors.amber,
              ),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 36,
                      backgroundColor: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Image.network(
                          "https://i.ibb.co/CwzHq4z/trans-logo-512.png",
                          width: 62,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "닉네임",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "hello@world.com",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
            ),
            AspectRatio(
              aspectRatio: 12 / 4,
              child: PageView(
                children: [
                  Image.network("https://i.ibb.co/0mXKmZq/banner-1.jpg"),
                  Image.network("https://i.ibb.co/DDgYrJR/banner-2.jpg"),
                  Image.network("https://i.ibb.co/v1RMHN4/banner-3.jpg"),
                  Image.network("https://i.ibb.co/NmNsrr2/banner-4.jpg"),
                ],
              ),
            ),
            ListTile(
              title: Text(
                '구매내역',
                style: TextStyle(fontSize: 18),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                '저장한 레시피',
                style: TextStyle(fontSize: 18),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
