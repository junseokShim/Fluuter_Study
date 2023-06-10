# Fluuter_Study

## 1주차

FLutter ? 앱 개발을 위한 Dart 기반의 Framework

<특징>
- Cross Platform App
- 2020년 기점으로 React Native를 뛰어넘음
- 구글 공식 문서 활용가능
- Hot Reload 기능 지원
- option + esc 키를 통해 코드 자동완성 가능
- Refactor기능을 사용하면 편리하게 구조를 잡을 수 있음

<설치>
아래 4가지 설치
- Flutter : Android / iOS 앱을 하나의 코드로 구현할 수 있도록 도와주는 프레임워크
- VSCode : 코드 작성에 필요한 에디터
- Xcode : iOS 앱을 개발하기 위해 필요한 IDE
- Android Studio : Android 앱을 개발하기 위해 필요한 IDE

* MacOS의 경우 iOS 시뮬레이터 설치 가능

 - 설명링크
https://www.notion.so/teamsparta/1-Flutter-Dart-13ad3595ce07492fa732a331e48b9e42#76e5ad4c4de04e46b44d76485798b1f4

 - 설치 링크
https://docs.flutter.dev/get-started/install/windows


- Flutter는 Widget으로 관리되어지며, Widget들은 트리구조로 구성됨 
*Widget : React에서 Component와 같은 역할
** material widget : Android
** cupertino widget : iOS

(참고) https://docs.flutter.dev/development/ui/widgets


<프로젝트 생성>
- 경로에 한글이 들어가지 않도록 주의 !!


<프로젝트 설명>
- lib 폴더 : 주로 코딩하는 폴더(소스코드)
- pubspec.yaml : 라이브러리 및 설정을 하는 폴더


<Flutter 개념>
- Layout 설명
* Padding : 안쪽 여백 
* Border : 경계선
* Maring : 바깥쪽 여백

- Scaffold 위젯 : 한 페이지의 특정 영역에 위젯을 쉽게 배치할 수 있도록 틀을 잡아주는 역할을 하는 위젯
(예시)
Scaffold(
    appBar : 다른 위젯, // 상단 바
    body : 다른 위젯∏, // 화면 중앙에 가장 큰 면적
    bottomNavigationBar : 다른 위젯, // 하단 바
    floatingActionButton : 다른 위젯, // 하단 화면 최상위에 있는 버튼
)

- Text 위젯 : 텍스트를 보여줄 때는 Text 위젯을 사용
(예시)
Text(
    '작성할 내용'
    style: TextStyle(
        fontSize: 35, // 폰트 크기
        fontWeight: FontWeight.bold, // 폰트 두께
        color: Colors.amber, // 폰트 색상
    )
)

- Column 위젯 : 세로 방향으로 여러 위젯을 나열할 때 사용
(예시)
Column(
    children: [ // 자식 위젯들
        Text("위젯1"),
        Text("위젯2"),
    ],
)

- Button 위젯 리스트
* onPressed : Js에서 OnClick과 동일한 기능을 함
(예시)
* 위로 올라와 있는 듯한 버튼
ElevatedButton(
    onPressed: () {}
    child: Text('Elevated Button'),
),

* 텍스트 버튼
TextButton(
    onPressed: () {}
    child: Text('Text Button),
),

* 아이콘 버튼
IconButton(
    onPressed: () {},
    icon: Icon(Icons.add)
)

- Appbar 위젯

- Padding 위젯 : 위젯별로 여백을 주는 기능