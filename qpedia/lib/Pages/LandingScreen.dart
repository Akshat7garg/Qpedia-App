import 'dart:ui';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qpedia/Pages/HomePage.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  late Timer _timer;
  bool animationborder = false;
  @override
  void initState() {
    super.initState();

    _timer = Timer.periodic(Duration(milliseconds: 2000), (timer) {
      setState(() {
        animationborder = !animationborder;
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        _buildBackground(),
        SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedContainer(
                  duration: Duration(milliseconds: 2000),
                  width: 260,
                  height: 260,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color.fromARGB(144, 255, 255, 255),
                      width: animationborder ? 8.0 : 0.0,
                    ),
                  ),
                  child: ClipOval(
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 2000),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: animationborder
                              ? Colors.white
                              : const Color.fromARGB(0, 255, 255, 255),
                          width: animationborder ? 8.0 : 0.0,
                        ),
                      ),
                      child: Image.asset(
                        'assets/Landing2.jpg',
                        height: 250,
                        width: 250,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 22),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Qpedia",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 45,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(height: 62),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Center(
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: Text(
                                "Qpedia is an open-source project aimed at providing a centralized platform for students.",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize:
                                      MediaQuery.of(context).size.width < 360
                                          ? 14
                                          : 18,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 22),
                colorButton(context)
              ],
            ),
          ),
        ),
      ],
    ));
  }

  Widget _buildBackground() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFFB3E5FC), // very light sky blue
            Color(0xFFBBDEFB), // soft, pastel sky blue
            Color(0xFFE3F2FD), // very pale sky blue, close to white
            Color(0xFFFFFFFF), // pure white
            Color(0xFFE3F2FD), // very pale sky blue, close to white
            Color(0xFFBBDEFB), // soft, pastel sky blue
          ],
        ),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
        child: Container(
          decoration: BoxDecoration(color: Colors.black.withOpacity(0.3)),
        ),
      ),
    );
  }

  bool buttonTapped = false; // Track button tap state

  Widget colorButton(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        setState(() {
          buttonTapped = true;
        });
      },
      onTapUp: (details) {
        setState(() {
          buttonTapped = false;
        });
      },
      onTapCancel: () {
        setState(() {
          buttonTapped = false;
        });
      },
      onTap: () {
        // Handle button click here
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (builder) => HomePage()),
            (route) => false);
      },
      child: AnimatedContainer(
        width: MediaQuery.of(context).size.width - 90,
        height: 60,
        duration: Duration(milliseconds: 10), // Animation duration
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: buttonTapped
              ? const Color.fromARGB(144, 255, 255, 255)
              : Colors.black,
          border: Border.all(
              color: const Color.fromARGB(154, 158, 158, 158), width: 2),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Let's Get Started",
                style: TextStyle(
                  color: buttonTapped ? Colors.black : Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 40),
              buttonTapped
                  ? SvgPicture.asset(
                      'assets/arrow.svg',
                      width: 30,
                      height: 30,
                    )
                  : ClipOval(
                      child: Image.asset(
                        'assets/arrow2.gif',
                        width: 30,
                        height: 30,
                      ),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
