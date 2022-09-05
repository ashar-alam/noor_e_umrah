import 'package:flutter/material.dart';
import 'package:noor_e_umrah/screens/bottom_bar/haj.dart';
import 'package:noor_e_umrah/screens/bottom_bar/quran.dart';
import 'package:noor_e_umrah/screens/home_screen.dart';

import '../utils/app_style.dart';
import '../utils/string_manager.dart';

class MyDashBoard extends StatefulWidget {
  const MyDashBoard({Key? key}) : super(key: key);

  @override
  State<MyDashBoard> createState() => _MyDashBoardState();
}

class _MyDashBoardState extends State<MyDashBoard> {
  int currentIndex = 0;

  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    List<Widget> screenS = const <Widget>[
      MyHomeScreen(),
      MyHaj(),
      MyQuran(),
      // MyBooking(),
      // MyAccount()
    ];
    return Scaffold(
      backgroundColor: Colors.white.withAlpha(55),
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          screenS.elementAt(currentIndex),
          Positioned(
            bottom: 0,
            left: 0,
            child: SizedBox(
              width: size.width,
              height: 80,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(255, 24, 141, 28)
                              .withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: CustomPaint(
                      size: Size(size.width, 80),
                      painter: BNBCustomPainter(),
                    ),
                  ),
                  Center(
                    heightFactor: 0.7,
                    child: SizedBox(
                      height: 62,
                      width: 70,
                      child: FloatingActionButton(
                          backgroundColor: AppStyle.primaryColor,
                          elevation: 0.5,
                          onPressed: () {
                            setBottomBarIndex(2);
                          },
                          child: const Icon(
                            Icons.book_online_outlined,
                            size: 25,
                          )),
                    ),
                  ),
                  SizedBox(
                    width: size.width,
                    height: 80,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                icon: Icon(
                                  Icons.home,
                                  size: 25,
                                  color: currentIndex == 0
                                      ? AppStyle.primaryColor
                                      : Colors.grey.shade400,
                                ),
                                onPressed: () {
                                  setBottomBarIndex(0);
                                },
                                splashColor: Colors.white,
                              ),
                              IconButton(
                                  icon: Icon(
                                    Icons.search,
                                    size: 25,
                                    color: currentIndex == 1
                                        ? AppStyle.primaryColor
                                        : Colors.grey.shade400,
                                  ),
                                  onPressed: () {
                                    setBottomBarIndex(1);
                                  }),
                              Container(
                                width: size.width * 0.15,
                              ),
                              IconButton(
                                  icon: Icon(
                                    Icons.bookmark,
                                    size: 25,
                                    color: currentIndex == 3
                                        ? AppStyle.primaryColor
                                        : Colors.grey.shade400,
                                  ),
                                  onPressed: () {
                                    // setBottomBarIndex(3);
                                  }),
                              IconButton(
                                icon: Icon(
                                  Icons.settings,
                                  size: 25,
                                  color: currentIndex == 4
                                      ? AppStyle.primaryColor
                                      : Colors.grey.shade400,
                                ),
                                onPressed: () {
                                  // setBottomBarIndex(4);
                                },
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                StringManager.home,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Container(
                                width: size.width * 0.02,
                              ),
                              const Text(
                                StringManager.haj,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Container(
                                width: size.width * 0.15,
                              ),
                              const Text(
                                StringManager.bookMark,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const Text(
                                StringManager.setting,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class BNBCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, 20); // Start
    path.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0);
    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 20);
    path.arcToPoint(Offset(size.width * 0.60, 20),
        radius: const Radius.circular(20.0), clockwise: false);
    path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);
    path.quadraticBezierTo(size.width * 0.80, 0, size.width, 20);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 20);
    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
