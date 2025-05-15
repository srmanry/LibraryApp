import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mylibrary/common/botton.dart';
import 'package:mylibrary/feature/auth/view/login_screen_veiw.dart';
import 'package:mylibrary/feature/auth/view/sign_up_screen.dart';

class WelcomeScreenView extends StatelessWidget {
  const WelcomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("welcome screen "),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text("Welcome TO My Library"),

            CustomBottom(
            textColor: Colors.black,
            bottomColor: Colors.green,name: "Sign up",onTap: (){
              Get.to(SignUpScreenView());
            },),
            SizedBox(height: 10,),

            CustomBottom(
              bottomColor: Colors.green,
              name: "Sign in",onTap: (){
              Get.to(LoginScreenView());
            },)
          ],
        ),
      ),
    );
  }
}
