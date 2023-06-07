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
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "I Love SoHyun",
            style: TextStyle(fontSize: 28),
          ),
        ), // Header
        body: SingleChildScrollView(
          // Child 들에 스크롤가능하게 해줌
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Image.network(
                    "https://i.ibb.co/nngK6j3/startup.png",
                    width: 81,
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: "이메일 (e-mail)",
                  ),
                ), // Text field
                TextField(
                  obscureText: true, // 암호화
                  decoration: InputDecoration(
                    labelText: "비밀번호 (Password)",
                  ),
                ), // Text field
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 24),
                  child: ElevatedButton(
                      onPressed: () {
                        print('로그인 버튼 클릭을 로그에 알려줌');
                      },
                      child: Text("Log in")),
                )
              ],
            ),
          ),
        ), // Body
      ),
    );
  }
}
