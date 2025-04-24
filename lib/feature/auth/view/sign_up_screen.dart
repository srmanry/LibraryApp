import 'package:flutter/material.dart';
import 'package:mylibrary/common/botton.dart';
import 'package:mylibrary/common/custom_textfild.dart';
import 'package:mylibrary/util/custom_color.dart';
import 'package:mylibrary/util/dimensions.dart';
import 'package:mylibrary/util/styles.dart';


class SignUpScreenView extends StatelessWidget {
  const SignUpScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(child: Padding(
        padding: const EdgeInsets.all(Dimensions.fifTeen),
        child: Column(
          children: [
            const Text("Join E Book Library",style: textBold,),
            const Text("Read and Books"),
            const SizedBox(height: Dimensions.twenty,),
            const Text("Email",style: textMedium,),
            const CustomTextField(priFixIcon: Icon(Icons.email_outlined, ), hinText: "Email",),

            const Text("Password",style: textMedium,),
            const CustomTextField(priFixIcon: Icon(Icons.lock), hinText: "Password",),

            Row(children: [
              const Icon(Icons.check_box),
              const SizedBox(width: Dimensions.defaultSize,),
              const Text("I agree to E Library"),
              Text("Terms & conditions",style: textRegular.copyWith(color: appColor)),
            ],),

            Row(children: [
              const Text("Already have an account?"),
              Text("Sign in",style: textRegular.copyWith(color: appColor),),
            ],),

          const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: Dimensions.twenty),
              child: CustomBottom(name:"Sign up",bottomColor: appColor,),
            ),
          ],
        ),
      )),
    );
  }
}
