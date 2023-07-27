import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
import 'package:percent_indicator/percent_indicator.dart';

void main() {
  runApp(const Appresume());
}

class AppResune extends StatelessWidget {
  const AppResune({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: null,
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Lottie.asset('assets/images/127447-kitty-cat-error-404.json'),
      backgroundColor: Color.fromARGB(255, 233, 228, 228),
      nextScreen: const MyHomePage(),
      splashIconSize: 250,
      duration: 4000,
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.leftToRightWithFade,
      animationDuration: const Duration(seconds: 1),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(245, 241, 241, 241),
      appBar: null,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 35),
                child: Text(
                  'resume',
                  style: TextStyle(
                    fontFamily: 'Kanit',
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    height: 2,
                    fontSize: 12,
                    color: Color.fromARGB(255, 28, 28, 28),
                  ),
                  textAlign: TextAlign.start,
                  maxLines: 2,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/106146935_907225646413628_1517182453897339073_n.jpg',
                    alignment: Alignment.center,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                'Teerawat Pinchai',
                style: TextStyle(
                  fontFamily: 'Kanit',
                  fontWeight: FontWeight.bold,
                  height: 2,
                  fontSize: 15,
                  color: Color.fromARGB(255, 13, 13, 85),
                ),
                textAlign: TextAlign.center,
                maxLines: 2,
              ),
              Text(
                'flutter ui resume design ',
                style: TextStyle(
                  fontFamily: 'Kanit',
                  fontStyle: FontStyle.italic,
                  height: 2,
                  fontSize: 10,
                  color: Color.fromARGB(255, 28, 28, 28),
                ),
                textAlign: TextAlign.center,
                maxLines: 2,
              ),
              SizedBox(
                width: 300,
                height: 550,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: 5,
                      right: 5,
                      top: 0,
                      bottom: 465,
                      child: Container(
                        width: 290,
                        height: 200,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 0.5,
                            color: Color.fromARGB(255, 168, 167, 167),
                            style: BorderStyle.solid,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Icon(Icons.attach_file,
                                  size: 15,
                                  color: Color.fromARGB(255, 75, 112, 192)),
                              SizedBox(width: 5),
                              Text(
                                'About \n        Error 404',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Kanit',
                                  fontStyle: FontStyle.italic,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 5,
                      right: 143,
                      top: 90,
                      bottom: 280,
                      child: Container(
                        width: 290,
                        height: 100,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 0.5,
                            color: Color.fromARGB(255, 168, 167, 167),
                            style: BorderStyle.solid,
                          ),
                        ),
                        child: Stack(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(3),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Icon(Icons.assignment_ind_outlined,
                                      size: 15,
                                      color: Color.fromARGB(255, 75, 112, 192)),
                                  SizedBox(width: 5),
                                  Text(
                                    'PERSONAL DATA',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontStyle: FontStyle.italic,
                                      fontFamily: 'Kanit',
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 5),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 8, left: 3, bottom: 3),
                              child: Stack(
                                children: <Widget>[
                                  Text(
                                    '\n    Name         :   Teerawat Pinchai\n    Nickname :  Tum\n    birthday   :   25/10/2000\n    Phone       :   +66 910796192\n    Address    :    234 Mueang \n                         Chiang Mai \n                         District, Chiang Mai\n                         50300\n   E-mail      :  Teerawatpinchai14\n                         @gmail.com',
                                    style: TextStyle(
                                      fontSize: 9.5,
                                      fontStyle: FontStyle.italic,
                                      fontFamily: 'Kanit',
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 162,
                      right: 5,
                      top: 90,
                      bottom: 205,
                      child: Container(
                        width: 290,
                        height: 100,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 0.5,
                            color: Color.fromARGB(255, 168, 167, 167),
                            style: BorderStyle.solid,
                          ),
                        ),
                        child: Stack(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(3),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Icon(Icons.school,
                                      size: 15,
                                      color: Color.fromARGB(255, 75, 112, 192)),
                                  SizedBox(width: 5),
                                  Text(
                                    'EDUCATION',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontStyle: FontStyle.italic,
                                      fontFamily: 'Kanit',
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 5),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 8, left: 3, bottom: 3),
                              child: Stack(
                                children: <Widget>[
                                  Text(
                                    '\n    2015-2017',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Kanit',
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    '\n\n       College',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontStyle: FontStyle.italic,
                                      fontFamily: 'Kanit',
                                      color: Color.fromARGB(255, 8, 49, 130),
                                    ),
                                  ),
                                  Text(
                                    '\n\n\n           Lanna Polytechnic Changmai Techonological College.',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontStyle: FontStyle.italic,
                                      fontFamily: 'Kanit',
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    '\n\n\n\n\n\n    2018-2019',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Kanit',
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    '\n\n\n\n\n\n\n       College',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontStyle: FontStyle.italic,
                                      fontFamily: 'Kanit',
                                      color: Color.fromARGB(255, 8, 49, 130),
                                    ),
                                  ),
                                  Text(
                                    '\n\n\n\n\n\n\n\n           Lanna Polytechnic Changmai Techonological College.',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontStyle: FontStyle.italic,
                                      fontFamily: 'Kanit',
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    '\n\n\n\n\n\n\n\n\n\n\n    2020-2022',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Kanit',
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    '\n\n\n\n\n\n\n\n\n\n\n\n       university',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontStyle: FontStyle.italic,
                                      fontFamily: 'Kanit',
                                      color: Color.fromARGB(255, 8, 49, 130),
                                    ),
                                  ),
                                  Text(
                                    '\n\n\n\n\n\n\n\n\n\n\n\n\n           Rajamangala University of Technology Lanna.',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontStyle: FontStyle.italic,
                                      fontFamily: 'Kanit',
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 5,
                      right: 143,
                      top: 275,
                      bottom: 75,
                      child: Container(
                        width: 290,
                        height: 100,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 0.5,
                            color: Color.fromARGB(255, 168, 167, 167),
                            style: BorderStyle.solid,
                          ),
                        ),
                        child: Stack(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(3),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Icon(Icons.exposure_sharp,
                                      size: 15,
                                      color: Color.fromARGB(255, 75, 112, 192)),
                                  SizedBox(width: 5),
                                  Text(
                                    'SKILLS',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontStyle: FontStyle.italic,
                                      fontFamily: 'Kanit',
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 5),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 3, left: 3, bottom: 3),
                              child: Stack(
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.all(3.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Image.asset(
                                              'assets/images/1452px-CSS3_logo_and_wordmark.svg.png',
                                              alignment: Alignment.center,
                                              width: 20,
                                              height: 20,
                                              fit: BoxFit.cover,
                                            ),
                                            new LinearPercentIndicator(
                                              width: 100.0,
                                              lineHeight: 8.0,
                                              percent: 0.6,
                                              progressColor: Colors.red,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(3.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Image.asset(
                                              'assets/images/732212.png',
                                              alignment: Alignment.center,
                                              width: 20,
                                              height: 20,
                                              fit: BoxFit.cover,
                                            ),
                                            new LinearPercentIndicator(
                                              width: 100.0,
                                              lineHeight: 8.0,
                                              percent: 0.8,
                                              progressColor: Colors.red,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(3.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Image.asset(
                                              'assets/images/JavaScript-logo.png',
                                              alignment: Alignment.center,
                                              width: 20,
                                              height: 20,
                                              fit: BoxFit.cover,
                                            ),
                                            new LinearPercentIndicator(
                                              width: 100.0,
                                              lineHeight: 8.0,
                                              percent: 0.4,
                                              progressColor: Colors.red,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(3.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Image.asset(
                                              'assets/images/5968350.png',
                                              alignment: Alignment.center,
                                              width: 20,
                                              height: 20,
                                              fit: BoxFit.cover,
                                            ),
                                            new LinearPercentIndicator(
                                              width: 100.0,
                                              lineHeight: 8.0,
                                              percent: 0.65,
                                              progressColor: Colors.red,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(3.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Image.asset(
                                              'assets/images/63018720eab248248ff88ee3_1bd86e15.png',
                                              alignment: Alignment.center,
                                              width: 20,
                                              height: 20,
                                              fit: BoxFit.cover,
                                            ),
                                            new LinearPercentIndicator(
                                              width: 100.0,
                                              lineHeight: 8.0,
                                              percent: 0.4,
                                              progressColor: Colors.red,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(3.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Image.asset(
                                              'assets/images/1239719.png',
                                              alignment: Alignment.center,
                                              width: 20,
                                              height: 20,
                                              fit: BoxFit.cover,
                                            ),
                                            new LinearPercentIndicator(
                                              width: 100.0,
                                              lineHeight: 8.0,
                                              percent: 0.7,
                                              progressColor: Colors.red,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 162,
                      right: 5,
                      top: 350,
                      bottom: 75,
                      child: Container(
                        width: 290,
                        height: 100,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 0.5,
                            color: Color.fromARGB(255, 168, 167, 167),
                            style: BorderStyle.solid,
                          ),
                        ),
                        child: Stack(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(3),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Icon(Icons.work,
                                      size: 15,
                                      color: Color.fromARGB(255, 75, 112, 192)),
                                  SizedBox(width: 5),
                                  Text(
                                    'EXPERIENCE',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontStyle: FontStyle.italic,
                                      fontFamily: 'Kanit',
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 5),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 3, left: 3, bottom: 3),
                              child: Stack(
                                children: <Widget>[
                                  Text(
                                    '\n        ►  Programmer\n        ►  Database  \n        ►  it support \n        ►  Network',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: 'Kanit',
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 5,
                      right: 5,
                      top: 480,
                      bottom: 30,
                      child: Container(
                        width: 290,
                        height: 200,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 0.5,
                            color: Color.fromARGB(255, 168, 167, 167),
                            style: BorderStyle.solid,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Icon(Icons.attach_file,
                                  size: 15,
                                  color: Color.fromARGB(255, 75, 112, 192)),
                              SizedBox(width: 5),
                              Text(
                                'HOBBIES :    ',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Kanit',
                                  fontStyle: FontStyle.italic,
                                  color: Colors.black,
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 7, left: 7),
                                    child: Image.asset(
                                      'assets/images/4259278.png',
                                      alignment: Alignment.center,
                                      width: 20,
                                      height: 20,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 7, left: 7),
                                    child: Image.asset(
                                      'assets/images/53283.png',
                                      alignment: Alignment.center,
                                      width: 20,
                                      height: 20,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 7, left: 7),
                                    child: Image.asset(
                                      'assets/images/594550.png',
                                      alignment: Alignment.center,
                                      width: 20,
                                      height: 20,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 7, left: 7),
                                    child: Image.asset(
                                      'assets/images/4021631.png',
                                      alignment: Alignment.center,
                                      width: 20,
                                      height: 20,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 7, left: 7),
                                    child: Image.asset(
                                      'assets/images/2740859.png',
                                      alignment: Alignment.center,
                                      width: 20,
                                      height: 20,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      top: 535,
                      bottom: 0,
                      child: Container(
                        width: 290,
                        height: 200,
                        decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(
                              width: 0.5,
                              color: Color.fromARGB(255, 31, 31, 31),
                              style: BorderStyle.solid,
                            ),
                          ),
                          //color: Color.fromARGB(255, 67, 2, 2),
                        ),
                        child: Text(
                          'This page was last edited on 22 December 2022, at 02:55 (UTC).',
                          style: TextStyle(
                            fontSize: 8,
                            fontStyle: FontStyle.italic,
                            fontFamily: 'Kanit',
                            color: Color.fromARGB(255, 84, 84, 84),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        width: 45.0,
        height: 25,
        child: FloatingActionButton.extended(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.keyboard_backspace_sharp),
          label: Text(""),
          backgroundColor: Color.fromRGBO(5, 112, 161,
              0.37), // set the background color to lighter and translucent white
          foregroundColor: Colors.black, // set the text and icon color to black
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
