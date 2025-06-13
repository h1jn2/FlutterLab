// card data 추상화
import 'package:flutter/material.dart';
import 'package:flutter_lab/ch3/section2/test2.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DataVO {
  String image;
  String title;
  String date;
  String content;
  String location;

  DataVO(this.image, this.title, this.date, this.content, this.location);
}

// 서버 데이터라는 가정
List<DataVO> datas = [
  DataVO(
    'images/lab_lotte_1.jpg',
    '롯데웨딩워크',
    '각 지점 본 매장',
    '6.13 (금) ~ 6.15 (일)',
    '백화점 전점'
  ),
  DataVO(
      'images/lab_lotte_2.jpg',
      '롯데웨딩워크',
      '각 지점 본 매장',
      '6.13 (금) ~ 6.15 (일)',
      '백화점 전점'
  ),
  DataVO(
      'images/lab_lotte_3.jpg',
      '롯데웨딩워크',
      '각 지점 본 매장',
      '6.13 (금) ~ 6.15 (일)',
      '백화점 전점'
  ),
  DataVO(
      'images/lab_lotte_4.jpg',
      '롯데웨딩워크',
      '각 지점 본 매장',
      '6.13 (금) ~ 6.15 (일)',
      '명동점'
  ),
  DataVO(
      'images/lab_lotte_5.jpg',
      '롯데웨딩워크',
      '각 지점 본 매장',
      '6.13 (금) ~ 6.15 (일)',
      '잠실점'
  ),
];

class CardWidget extends StatelessWidget {
  DataVO vo;
  CardWidget(this.vo);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.pink,
        ),
        Align(
          alignment: Alignment(0.0, 0.0),
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    vo.image,
                    width: 350,
                  ),
                  Container(
                    width: 350,
                    height: 100,
                    color: Colors.white,
                    padding: EdgeInsets.only(left: 16, top: 8, bottom: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          vo.title,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Spacer(),
                        Text(vo.content),
                        Text(vo.date),
                      ],
                    ),
                  )
                ],
              ),
              Positioned(
                left: 30,
                bottom: 90,
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.black,
                  child: Text(
                    vo.location,
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

// CardWidget 을 PageView 로
class MyWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyWidgetState();
  }
}

class MyWidgetState extends State<MyWidget> {
  List<CardWidget> makeWidgets() {
    return datas.map((vo) {
      return CardWidget(vo);
    }).toList();
  }

  // PageView 에 지정할 controller
  PageController controller = PageController(
    initialPage: 0,
    // 현재 보이는 화면에 왼쪽 오른쪽 화면을 얼마의 크기로 같이 뿌릴 지
    viewportFraction: 0.9
  );
  @override
  void dispose() {
    super.dispose();
    // pageView 를 위한 controller 소멸
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          // 손가락 따라서 한장씩 보이는 뷰
          child: PageView(
            controller: controller,
            children: makeWidgets(),
          ),
        ),
        SmoothPageIndicator(
          controller: controller,
          count: 5,
          effect: WormEffect(
            dotColor: Colors.white,
            activeDotColor: Colors.indigo,
          ),
        ),
        SizedBox(height: 30.0,)
      ],
    );
  }
}

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Layout Test'),),
        // SafeArea - 디바이스의 특성에 최대한 맞추어서 나오도록
        body: SafeArea(
          child: Container(
            color: Colors.pink,
            child: MyWidget(),
          ),
        ),
      ),
    );
  }
}