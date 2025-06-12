import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  bool enabled = false;
  String stateText = "disable";

  void changeCheck() {
    print("changeCheck()");
    if (enabled) {
      stateText = "disable";
      enabled = false;
    } else {
      stateText = "enabled";
      enabled = true;
    }
  }

  // 이 함수에서 리턴시킨 widget 이 화면 출력
  @override
  Widget build(BuildContext context) {
    print("build");
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Stateless Test")),
        body: Center(
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
        ),
      ),
    );
  }
}
