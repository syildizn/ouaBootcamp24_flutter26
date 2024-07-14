import 'package:flutter/material.dart';
import 'package:oua_bootcamp24_flutter26/widgets/auth_wrapper.dart';
import 'dart:async';

import 'package:google_fonts/google_fonts.dart';
import 'package:oua_bootcamp24_flutter26/screens/signUpAndLoginScreens/signUpScreens/view.dart';

class SplashScreen extends StatefulWidget {
  static String routeName = 'SplashScreen';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => AuthWrapper()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreenWidget(),
    );
  }
}

class SplashScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          Container(
            width: 247,
            height: 232,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/logo.png"),
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            'RIGHT',
            style: GoogleFonts.markoOne(
              textStyle: TextStyle(fontSize: 44, color: Color(0xFF6B5297)),
            ),
          ),
        ],
      ),
    );
  }
}
