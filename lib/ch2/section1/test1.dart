// import 'outer.dart';  // 상대경로
// import '/ch2/section1/outer.dart';  // 절대경로 (lib 다음 부터 지정)
import 'package:flutter_lab/ch2/section1/outer.dart'; // 절대경로 (lib 제외)

void main() {
  no1 = 100;
  // _no2 = 200;  // error
  sayHello1();
  // _sayHello2()  // error

  User1 obj1 = User1();
  // _User2 obj2 = _User2()  // error

  obj1.name = "kim";
  // obj1._address = ""   // error

}
