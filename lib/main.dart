import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CallerScreen(),
    );
  }
}

class CallerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double WIDTH = MediaQuery.of(context).size.width;
    double HEIGTH = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Stack(
      alignment: Alignment.center,
      children: [

        Positioned(
            top: HEIGTH * 0.15,
            child: ClayContainer(
              borderRadius: 90,
              color: Colors.white70,
              curveType: CurveType.convex,
              child: CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage("asset/Daco_4263064.png"),
              ),
            )),
        Positioned(
          bottom: HEIGTH * 0.16,
          left: 0,
          child: CustomPaint(
            size: Size(WIDTH, (HEIGTH * 0.45).toDouble()),
            //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
            painter: RPSCustomPainter(),
          ),
        ),
        Positioned(
          bottom: HEIGTH * 0.007,
          right: 0,
          child: CustomPaint(
            size: Size(WIDTH, (HEIGTH * 0.45).toDouble()),
            //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
            painter: RPSCustomPainter2(),
          ),
        ),
        Positioned(
            bottom: HEIGTH * 0.35,
            left: WIDTH*0.1,
            child: Icon(
              Icons.call_end,
              color: Colors.white,
              size: 30,
            )
        ),
        Positioned(
            bottom: HEIGTH * 0.22,
            right: WIDTH*0.1,
            child: Icon(
              Icons.call,
              color: Colors.white,
              size: 30,
            )
        ),
      ],
    ));
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = Colors.red
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_0 = Path();
    path_0.moveTo(0, size.height * 0.3000000);
    path_0.quadraticBezierTo(size.width * 0.3640625, size.height * 0.2835000,
        size.width * 0.3737500, size.height * 0.4980000);
    path_0.quadraticBezierTo(size.width * 0.3765625, size.height * 0.8005000, 0,
        size.height * 0.8000000);
    path_0.lineTo(0, size.height * 0.3000000);
    path_0.close();

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class RPSCustomPainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = Colors.green
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_0 = Path();
    path_0.moveTo(size.width, size.height * 0.2960000);
    path_0.quadraticBezierTo(size.width * 0.8896875, size.height * 0.1655000,
        size.width * 0.8112500, size.height * 0.2020000);
    path_0.cubicTo(
        size.width * 0.6543750,
        size.height * 0.2900000,
        size.width * 0.6068750,
        size.height * 0.5500000,
        size.width * 0.6225000,
        size.height * 0.6680000);
    path_0.quadraticBezierTo(size.width * 0.6496875, size.height * 0.8470000,
        size.width * 0.9375000, size.height * 0.7900000);
    path_0.quadraticBezierTo(size.width * 0.9906250, size.height * 0.7680000,
        size.width, size.height * 0.5980000);
    path_0.quadraticBezierTo(size.width, size.height * 0.5225000, size.width,
        size.height * 0.2960000);
    path_0.close();

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
