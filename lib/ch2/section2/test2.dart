const String data1 = "hello";
final int no1 = 10;

class User {
  // 클래스의 멤버 변수는 const 로 선언 불가능
  // 클래스의 멤버 변수는 객체가 생성될 때 마다 메모리 할당하고
  // 각 메모리로 객체의 데이터를 상이하게 유지하기 위해 사용
  // const String data2 = "hello"; // error

  // 클래스 내에 선언되는 변수를 const 로 선언하려면 static 으로
  static const String data2 = "hello";

  // final 로 선언하면 선언과 동시에 값을 할당하지 않아도 됨
  final int no2;
  User(this.no2);

  void some() {
    const String data3 = "hello";
    final int no3;
    no3 = 10;

    // data3 = "world";  // error
    // no3 = 20;   // error

    int age = 20;
    String str = "$data1, $no1, $age";
    final String str2 = "$data1, $no1, $age";
    // const 로 선언된 문자열 변수에 템플릿으로 값을 지정할 때
    // final, 일반 변수 값 지정 불가
    // const String str3 = "$data1, $no1, $age"; // error
  }
}