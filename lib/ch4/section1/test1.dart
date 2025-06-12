import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // 텍스트 에셋을 로딩하기 위한 개발자 함수
  // 파일 로딩이기 때문에 시간이 오래 걸림
  // 시간이 오래 걸려서 발생하는 데이터가 있다면 호출한 곳이 대기 상태가 되는 문제
  // Future 를 바로 리턴시켜서 대기하지 않게 하고 실제 데이터가 발생하면 콜백으로 전달
  Future<String> loadText() async {
    return await rootBundle.loadString('assets/text/my_text.txt');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // 앱 전역에 적용되어야 하는 폰트 지정
        fontFamily: 'myBasicFontName',
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("Asset Test")),
        body: Column(
          children: [
            Image.asset('images/icon.jpg'),
            Image.asset('images/icon/user.png'),
            // 데이터가 발생했다는 것을 감지했다가 실제 데이터가 발생하는 순간
            // 그 데이터로 화면을 구성하기 위한 위젯
            FutureBuilder(
              future: loadText(),
              builder: (context, snapshot) {
                // snapshot - 발생한 데이터
                return Text('assets text: ${snapshot.data}');
              },
            ),
            Text('안녕하세요 반갑습니다'),
            Text(
              '안녕하세요 반갑습니다',
              style: TextStyle(fontFamily: 'myFontName', fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
