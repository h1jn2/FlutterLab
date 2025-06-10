void main() {
  int no = 10;
  String name = "kim";
  String name1 = 'lee';
  String name2 = """
    hello
    world
  """;
  String name3 = '''
    hello
    world
  ''';

  String myFun() {
    return "park";
  }

  print("no: $no, name $name, result: ${10 + 20}, ${myFun()}");

  // 모두 객체이며 객체의 캐스팅은 상하위 관계의 클래스에서만 가능
  int no1 = 10;
  double d1 = 10.0;
  // double d2 = no1;  // error
  // int no2 = d1;   // error

  // 클래스의 함수를 이용
  double d2 = no1.toDouble();
  int no2 = d1.toInt();

  String strNo = '0';
  int no3 = int.parse(strNo);
  String strNo2 = no3.toString();
}