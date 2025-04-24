import 'package:get/get.dart';

class Helper {
  static const String initial  = "/";
  static const String splash = "/splash";
  static const String onboarding = "/onboarding";
  static const String dashBoard = "/dashboard";
  static const String homeScreen = "/homeScreen";
  static const String signInScreen ="/loginScreen";
  static const String signUpScreen = "/signUpScreen";



  static getInitialRoute()=> splash;
  static getSplashRoute()=>splash;
  static getOnboardingRoute()=>onboarding;
  static getSignInRoute()=>signInScreen;
  static getSighUpRoute()=>signUpScreen;
  static getHomeRoute()=>homeScreen;
  static getDashboard()=>dashBoard;


  static List<GetPage> routes = [

    // GetPage(name: initial, page: ()=>const SplashScreen())
   ];

}