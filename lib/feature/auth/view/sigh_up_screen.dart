import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mylibrary/common/custom_textfild.dart';
import 'package:mylibrary/feature/auth/controller/auth_controller.dart';
import 'package:mylibrary/util/dimensions.dart';
import 'package:mylibrary/util/styles.dart';


import 'otp_screen.dart';

class SighUpScreen extends StatelessWidget {


   AuthController authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar( backgroundColor: Colors.cyan, centerTitle: true,
        title:  Text("Sign Up",style: TextStyle(color: Colors.white,fontSize: 14.sp),),
        foregroundColor: Colors.white,),

      body: Padding(
        padding: const EdgeInsets.all(Dimensions.defaultSize),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               SizedBox(height: 20.h,),
              Text("Create A Account",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),

              Padding( padding: EdgeInsets.all(8.0),child: Text("Name",style: textMedium.copyWith(fontSize: 14.sp),), ),
              CustomTextField(controller:authController.nameController,
                focusColor: Colors.black,hinText: "Name",),
              SizedBox(height: Dimensions.fifTeen,),

              Padding( padding: EdgeInsets.all(8.0),child: Text("Date of Birth",style: textMedium.copyWith(fontSize: 14.sp),), ),
              CustomTextField(controller:authController.dobController,
                focusColor: Colors.black,hinText: "D/M/Y",),
              SizedBox(height: Dimensions.fifTeen,),

              Padding( padding: EdgeInsets.all(8.0),child: Text("Email",style: textMedium.copyWith(fontSize: 14.sp),), ),
              CustomTextField(controller:authController.emailController,
                focusColor: Colors.black,hinText: "Email",),
              SizedBox(height: Dimensions.fifTeen,),


              Padding( padding: EdgeInsets.all(8.0),child: Text("Phone",style: textMedium.copyWith(fontSize: 14.sp),), ),
              CustomTextField(controller:authController.phoneController,
                focusColor: Colors.black,hinText: "Phone",),

              Padding( padding: EdgeInsets.all(8.0),child: Text("Address",style: textMedium.copyWith(fontSize: 14.sp),), ),
              CustomTextField(controller:authController.addressController,
                focusColor: Colors.black,hinText: "Address",),
              SizedBox(height: Dimensions.fifTeen,),

               Padding( padding: EdgeInsets.all(8.0),child: Text("Password",style: textMedium.copyWith(fontSize: 14.sp),), ),
              CustomTextField(controller: authController.passwordController, focusColor: Colors.black,hinText: "password",

                obscureText: true, suffixIcon: Icon(Icons.visibility),),
              SizedBox(height: Dimensions.fifty,),

              InkWell(
                child: Container( height: 45.h, decoration: BoxDecoration(borderRadius: BorderRadius.circular(Dimensions.defaultSize),  color: Colors.cyan,),
                  child:  Center(child: Text("Sign up",style: TextStyle(fontSize: 18.sp,color: Colors.white),),),),

                onTap: (){
                  authController.signup();
                },),

              const SizedBox(height: Dimensions.defaultSize,),
            ],),
        ),
      ),

    );
  }
}
