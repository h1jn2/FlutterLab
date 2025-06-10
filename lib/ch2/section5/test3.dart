void some(int arg1, [String? arg2, bool arg3 = false]) { }

void myFun1(Function argFun) { }
void myFun2(int argFun(int a)) { }

String _name = "kim";
String get name {
  return _name.toUpperCase();
}
set name(value) {
  _name = value;
}

main() {
  some(10);
  some(10, "hello");
  some(20, "hello", true);

  myFun1(() { });
  myFun1((int a1, int a2){ });

  // myFun2((){}); // error
  myFun2((int a) {
    return a * 10;
  });

  name = "lee";
  print("name: $name");
}