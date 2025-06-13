import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

const List<String> choices = ["신고", "공유하기", "링크 복사"];

class HeaderWidget extends StatelessWidget {
  void select(String choice) {
    Fluttertoast.showToast(
      msg: choice,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.blue,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset("images/lab_instagram_icon_0.jpg"),
        Text("instagram"),
        Spacer(),
        PopupMenuButton<String>(
          // 메뉴 클릭 시의 이벤트 처리
          onSelected: select,
          // 메뉴 클릭 시 확장되는 부분을 구성하기 위해 호출
          itemBuilder: (BuildContext context) {
            // 이 함수에서 리턴시킨 부분이 확장되어 출력
            return choices.map<PopupMenuItem<String>>((String choice) {
              return PopupMenuItem<String>(value: choice, child: Text(choice));
            }).toList();
          },
        ),
      ],
    );
  }
}
