import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:mylibrary/feature/intro/view/welcome_screen.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    whereTogo();

    super.initState();
  }

  Future<void> whereTogo() async {
    // var sharedPref = await SharedPreferences.getInstance();

    // bool islogin = sharedPref.getBool("islogin") ?? false;
    Future.delayed(
      const Duration(seconds: 5),
          () {
        Get.to(() =>WelcomeScreenView ());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        // backgroundColor: Color(0xFFF9E8C9),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(image: AssetImage("assets/images/school.png",),height: 100,),

                const SizedBox(height: 10,),
                Text("My Library",style: TextStyle(  fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xff00A28D),fontFamily: "FL Mahfuj Brush",   ), ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}