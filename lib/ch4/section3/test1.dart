import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  onPressed() {
    print("click");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Event Test"),),
        body: Column(
          children: [
            Icon(
              Icons.alarm,
              size: 100,
              color: Colors.red,
            ),
            IconButton(
              onPressed: onPressed,
              icon: Icon(Icons.alarm, size: 100,),
            ),
            FaIcon(
              FontAwesomeIcons.bell,
              size: 100,
              color: Colors.red,
            ),
            GestureDetector(
              child: Image.asset("images/icon/user.png"),
              onTap: () {
                print("image click");
              },
              onVerticalDragStart: (DragStartDetails details) {
                print("${details.globalPosition.dx}");
              },
            ),
            ElevatedButton(
              onPressed: onPressed,
              child: Text("Click Me"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
                )
              ),
            ),
            TextButton(
                onPressed: onPressed, 
                child: Text("Click Me")
            ),
            OutlinedButton(
                onPressed: onPressed,
                child: Text("Click Me")
            )
          ],
        ),
      ),
    );
  }
}