void some(int data1, String data2, bool data3) { }

// data1 은 외부에서 필수 입력
// data2, data3 은 옵셔널로 선언 -> 호출 시점에 데이터 입력이 없을 수도 있음 -> nullable
// 옵셔널로 선언되는 매개변수는 nullable 아니면 default 값을 명시
void some1(int data1, {String? data2, bool data3 = false}){ }

// required
void some2({required int data1, String? data2}) { }

main() {
  // 매개변수 개수, 순서 맞추어서 호출 -> 이름 값 명시 X
  // some(data1: 10, data2: "hello", data3: true);

  some1(10);
  // some1(10, "hello", true); // error named parameter 로 선언된 매개변수
  // 순서 맞추지 않아도 됨
  some1(10, data2: "hello", data3: true);

  // 필수를 지정하긴 하지만 순서 신경쓰지 않음
  some2(data1: 10);
  some2(data2: "hello", data1: 10);


}