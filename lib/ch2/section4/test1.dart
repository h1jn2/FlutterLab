// int a1; // error

int a1 = 10;
int? a2 = 10;

class User {
  // int a3; // error
  int? a3;

  testFun() {
    // local 변수에 한해서만 non-null 타입 초기화 지정하지 않아도 됨
    int a5;
    a5 = 10;
  }
}

main() {
  var a1 = 10;  // int
  var a2 = null;  // dynamic
  var a3; // dynamic
  // var? a4 = null; // error

  a2 = 10;
  a2 = "hello";
  a3 = 10;
  a3 = "hello";
  a3 = null;

  // dynamic 은 null 을 포함한 개념
  dynamic a4 = 10;
  a4 = null;
}