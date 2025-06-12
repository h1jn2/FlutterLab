import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Stateful Test")),
        body: MyWidget(),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  // StatefulWidget 의 State 를 결정하기 위해 사용
  @override
  State<StatefulWidget> createState() {
    return MyWidgetState();
  }
}

// 어느 위젯의 상태를 위한 클래스인지 제네릭으로 꼭 타입 명시
class MyWidgetState extends State<MyWidget> {
  bool enabled = false;
  String stateText = "disable";

  void changeCheck() {
    print("changeCheck()");
    // State 에서 상태를 유지하고 상태 값이 변경되면 화면 re-rendering 가능
    // 상태는 State 의 변수
    // setState() 가 호출돼야 re-rendering 됨
    // setState() 함수의 매개변수에 지정한 함수를 호출해주고
    // 함수의 실행이 끝나면 re-rendering 됨
    // 상태(변수) 변경은 setState() 의 매개변수 함수에서 해야 함
    // setState() 의 매개변수에서는 오래 걸리는 작업 X
    setState(() {
      if (enabled) {
        stateText = "disable";
        enabled = false;
      } else {
        stateText = "enabled";
        enabled = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: (enabled
                ? Icon(Icons.check_box, size: 20)
                : Icon(Icons.check_box_outline_blank, size: 20)),
            color: Colors.red,
            onPressed: changeCheck,
          ),
          Container(
            padding: EdgeInsets.only(left: 16),
            child: Text(
              "$stateText",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
