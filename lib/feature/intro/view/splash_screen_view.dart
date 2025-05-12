import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mylibrary/feature/dashbord/view/dashobord_screen.dart';



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
        Get.to(() => DashBoardScreenView());
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
                ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      "assets/images/school.png",
                      fit: BoxFit.cover,
                      height: 150,
                    )),
                const SizedBox(height: 10,),
                const Text("My Library",style: TextStyle(  fontSize: 30, fontWeight: FontWeight.bold, color: Colors.green,fontFamily: "FL Mahfuj Brush",   ), ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}