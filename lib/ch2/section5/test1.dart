class User {
  void some() {}
  // void some(int a) { }  // error
}

// 매개변수가 var 로 선언되면 dynamic
void some1(var a) {
  a = 10;
  a = "hello";
  a = null;
}

// dynamic
void some2(a) {
  a = 10;
  a = "hello";
  a = null;
}

int some3() {
  return 10;
}

void some4() {}

dynamic some5() {
  return "hello";
}

// 생략하면 리턴 타입은 dynamic
some6() {
  return 10;
}
