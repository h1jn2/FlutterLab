int data1 = 10;
int? data2 = 10;

// 초기화 시점 미루기
late int a1;

String? str = "hello";

main() {
  // data1 = data2;  // error
  data1 = data2 as int; // 명시적 캐스팅
  data2 = data1;  // 암시적 캐스팅

  // print(a1 + 10); // error
  a1 = 10;
  print(a1 + 10);

  // str.isEmpty;  // error nullable 변수를 null safety operator 없이 이용
  str?.isEmpty;

  // bool result = str?.isEmpty; // error
  bool? result = str?.isEmpty;

  int? data3;
  data3 ??= 10;
  print(data3);
  data3 ??= null; // 대입되는 값이 null 이면 대입 X
  print(data3);

  String? data4 = "hello";
  String? result2 = data4 ?? "world";
  print(result2);
  data4 = null;
  result2 = data4 ?? "world";
  print(result2);
}
