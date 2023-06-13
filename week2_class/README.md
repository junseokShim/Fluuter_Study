# week2_class - 다양한 위젯을 활용해 화면 그리기

- StatelessWidget - 상태변화가 없어 화면을 새로고침 하지 않아도 되는 위젯

(예시)

        class MyApp extends StatelessWidget {
            MyApp(); // 생성자

            @override
            Widget build(BuildContext context) {
                return Text("hello");
            }
        }


- StatefulWidget - 상태변화가 있어 화면을 새로고침해야하는 위젯

(예시))

StatefulWidget의 경우 아래와 같이 2개의 클래스로 구성되어짐

        class MyApp extends StatefulWidget {
            MyApp(); // 생성자
        }

        // 상태 클래스, setState 함수를 통해 build 함수를 다시 호출함
        class _MyAppState extends State<MyApp> {
            @override
            Widget build(BuildContext context) {
                return Text("hello");
            }
        }


- Navigation (화면이동)

다음 페이지로 이동

        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondPage()),
        );


        // 뒤로가기
        Navigator.pop(context);
