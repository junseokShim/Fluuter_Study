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
        "category": "탑건: 매버릭",
        "imgUrl": "https://i.ibb.co/sR32PN3/topgun.jpg",
      },
      {
        "category": "마녀2",
        "imgUrl": "https://i.ibb.co/CKMrv91/The-Witch.jpg",
      },
      {
        "category": "범죄도시2",
        "imgUrl": "https://i.ibb.co/2czdVdm/The-Outlaws.jpg",
      },
      {
        "category": "헤어질 결심",
        "imgUrl": "https://i.ibb.co/gM394CV/Decision-to-Leave.jpg",
      },
      {
        "category": "브로커",
        "imgUrl": "https://i.ibb.co/MSy1XNB/broker.jpg",
      },
      {
        "category": "문폴",
        "imgUrl": "https://i.ibb.co/4JYHHtc/Moonfall.jpg",
      },
    ];

    // 화면에 보이는 영역
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                "Movie Reviews",
                style: TextStyle(fontSize: 28, color: Colors.black87),
              ),
              backgroundColor: Colors.white,
              // leading: Icon(Icons.cake),
              actions: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.account_circle,
                    size: 30.0,
                    color: Colors.black,
                  ),
                  tooltip: "Hi!",
                  onPressed: () => {print(dataList[0])},
                ),
              ],
            ),
            body: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        TextField(
                            textInputAction: TextInputAction.search,
                            decoration: InputDecoration(
                                hintText: "영화 제목을 검색해 주세요",
                                border: OutlineInputBorder(),
                                contentPadding:
                                    EdgeInsets.only(left: 15.0, top: 15.0),
                                suffixIcon: IconButton(
                                  icon: Icon(Icons.search),
                                  onPressed: () => {},
                                  iconSize: 48.0,
                                ))),
                        Container(
                          height: 500,
                          width: 500,
                          //margin: EdgeInsets.only(top: 24),
                          padding: EdgeInsets.all(16.0),
                          child: ListView.builder(
                            padding: EdgeInsets.only(top: 24),
                            itemCount: dataList.length,
                            itemBuilder: (context, index) {
                              return Card(
                                elevation: 4.0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16.0)),
                                child: Stack(
                                  children: <Widget>[
                                    Container(
                                      alignment: Alignment.center,
                                      child: Image.network(
                                        dataList[index]['imgUrl'],
                                        height: 250,
                                        width: double.infinity,
                                        fit: BoxFit.cover,
                                        color: Colors.black45,
                                        colorBlendMode: BlendMode.darken,
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "\n" +
                                            "\n" +
                                            dataList[index]['category'],
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 40.0),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        )
                      ],
                    )))));
  }
}
