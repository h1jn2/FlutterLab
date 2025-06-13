import 'package:flutter/material.dart';
import 'package:flutter_lab/ch4/section5/widgets/content_widget.dart';
import 'package:flutter_lab/ch4/section5/widgets/header_widget.dart';
import 'package:flutter_lab/ch4/section5/widgets/icon_widget.dart';
import 'package:flutter_lab/ch4/section5/widgets/imgae_widget.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // flutter 는 자동 스크롤을 지원하지 않음
    // 동시에 여러 개의 위젯을 한번에 스크롤 -> ListView
    // 단일 위젯을 스크롤 -> SingleChildScrollView
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("layout test"),),
        body: SingleChildScrollView(
          child: Column(
            children: [
              HeaderWidget(),
              ImageWidget(),
              IconWidget(),
              ContentWidget()
            ],
          ),
        ),
      ),
    );
  }
}