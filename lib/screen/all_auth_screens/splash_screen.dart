import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:mylamesy/screen/all_auth_screens/login_screen.dart';


class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SplashScreen(
        seconds: 15,
        imageBackground: AssetImage('images/splash_cover.png',),
        image: Image.asset('images/logo.png', alignment: Alignment.bottomCenter,),
        loaderColor: Colors.transparent,
        photoSize: 200.0,
        navigateAfterSeconds: LoginScreen(),
      ),
    );
  }
}

