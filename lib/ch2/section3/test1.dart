void main() {
  // 제네릭으로 타입 지정 없으면 dynamic
  List list1 = [10, 'hello', true];
  list1[0] = 20;
  list1[1] = false;
  print("${list1}");

  List<int> list2 = [10, 20, 30];

  // 배열처럼 사용하지만 사이즈가 고정되진 않음
  list2.add(40);

  // List 사이즈 고정
  var list3 = List<int>.filled(3, 0);
  list3[0] = 10;
  // list3.add(40);   // error
  print(list3);

  // 사이즈 가변
  var list4 = List<int>.filled(3, 0, growable: true);
  list4.add(40);
  print(list4);

  Set<int> set1 = {10, 20, 10};
  set1.add(40);
  print(set1);

  Map<String, String> map1 = {"one":"hello", "two":"world"};
  print(map1["one"]);
  map1.addEntries([
    MapEntry("three", "aaa"),
    MapEntry("four", "bbb")
  ]);

  Iterator<int> iterator = list2.iterator;
  while(iterator.moveNext()) {
    print(iterator.current);
  }
}