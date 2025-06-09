// dart 에는 접근제한자 제공 X
// 기본 public 이지만 외부 파일에서 이용 되지 않게 하려면 _(언더바) 사용
int no1 = 10;
int _no2 = 20;

void sayHello1() { }
void _sayHello2() { }

class User1 {
  String? name;
  String? _address;
}

class _User2 { }

void main() {
  no1 = 100;
  _no2 = 200; // 같은 파일 내에서는 사용 가능
}