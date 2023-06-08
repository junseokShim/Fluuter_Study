# hello_flutter

A new Flutter project.

## Dart 기본 문법

DartPad : 온라인 상에서 Dart를 실행할 수 있는 웹 사이트
https://dartpad.dev/

- C++의 기본 문법을 따름
- 코드의 마지막에는 ; 표시를 추가해야함

[ 변수 : 어떤 값을 담는 바구니 ]
- Dart의 자료형
`var` : 처음 담긴 값으로 타입이 지정됩니다.
`String` : 문자만 담을 수 있습니다.
`String?` : 문자 또는 비어있는(`null`) 상태일 수 있습니다.
`const`: 처음에 변수를 선언하며 담은 값을 변경할 수 없습니다.
`final` : 선언하고 나중에 값을 담을 수 있으나, 한 번 담으면 변경할 수 없습니다.
- 변수명은 camelCase 사용을 권장


[ 조건문 ]
if (bool1) {
    // bool1 == true일 경우 실행
} else {
    // bool1 != true일 경우 실행
}


[ 반복문 ]
(예시)
for (int i=0; i<5; i++){
    print('hello ${i+1}');
}


[ 함수 : 여러 코드를 묶어둔 상자 ]

functionType functionName() {
    // 실행코드
}

(예시 - 선언)
void say() {
    print("2. 안녕");
    print("3. Hello");
}

(예시 - 호출)
say() 

(예시 - 화살표 함수)
say() {
    return "hello";
}

sayArraw() => "hello";


[ 클래스 ]

아래 구성요소들로 이루어짐
- 속성 : 클래스 내 변수
- 메소드 : 클래스 내 함수
- 생성자 : 클래스 명과 동일한 함수

(예시 - 클래스 선언)
class Bread {
    // 생성자 함수, 클래스의 객체가 생성될 때 호출되어짐
    Bread(String core) {
        content = core; // 초기화
    }

    // Bread 클래스가 가진 content 속성
    String? content;

    // Bread 클래스가 가진 getDescription 메서드
    String getDescription(){
        return "hello";
    }
}

(예시 - 클래스 호출)
void main() {
    Bread bread = Bread(); // Bread 클래스의 생성자를 호출해 인스턴스를 반환함
    // bread를 Bread 클래스의 Instance라고 함
}

extends를 통해 상속할 수 있음

(예시)
class Bread extends TousLesJours{
    //Bread의 속성과 메서드를 불러옴

}

** Dart는 모두 Class로 구성됨 **