import 'package:flutter/material.dart';
import 'package:flutter_api_rest/widgets/circle.dart';
import 'package:flutter_api_rest/widgets/icon_container.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double pinkSize = size.width * 0.8; 
    final double orangeSize = size.width * 0.57;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: - pinkSize * 0.4,
              right: - pinkSize * 0.2,
              child: Circle(
                colors: [
                  Colors.pinkAccent,
                  Colors.pink
                ],
                size: size.width * 0.8
              )
            ),
            Positioned(
              top: - orangeSize * 0.55,
              left: - orangeSize * 0.15,
              child: Circle(
                colors: [
                  Colors.deepOrangeAccent,
                  Colors.orange
                ],
                size: size.width * 0.57
              )
            ),
            Positioned(
              top: pinkSize * 0.35,
              child: IconContainer(
                size: size.width * 0.17,
              )
            )
          ],
        ),
      ),
    );
  }
}