import 'package:flutter/material.dart';
import 'package:flutter_api_rest/widgets/circle.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Stack(
          children: [
            Positioned(
              top: - ( size.width * 0.8 ) * 0.4,
              right: - ( size.width * 0.8 ) * 0.2,
              child: Circle(
                colors: [
                  Colors.pinkAccent,
                  Colors.pink
                ],
                size: size.width * 0.8
              )
            ),
            Positioned(
              top: - ( size.width * 0.57 ) * 0.55,
              left: - ( size.width * 0.57 ) * 0.15,
              child: Circle(
                colors: [
                  Colors.deepOrangeAccent,
                  Colors.orange
                ],
                size: size.width * 0.57
              )
            ),
          ],
        ),
      ),
    );
  }
}