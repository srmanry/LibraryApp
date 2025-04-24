import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mylibrary/feature/accounts/widgets/profile_card_widget.dart';
import 'package:mylibrary/util/custom_color.dart';
import 'package:mylibrary/util/dimensions.dart';
import 'package:mylibrary/util/styles.dart';



import 'book_uplode_screen.dart';
import 'yourbooks_screen.dart';

class ProfileScreenView extends StatelessWidget {
  const ProfileScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:  AppBar(
          centerTitle: true,backgroundColor: appColor,
          title: const Text("Profile",style: TextStyle(color: Colors.white),),
        ),
      body:  Padding(
        padding: const EdgeInsets.all(Dimensions.defaultSize),
        child: Column(children: [
          const SizedBox(height: 20,),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: Dimensions.fifTeen),
            child: CircleAvatar(backgroundColor: Colors.amberAccent,radius: 35,child: Icon(Icons.person),), ),

          Text("gmail@gmail.com",style: textMedium.copyWith(fontSize: 15),),
          const SizedBox(height: 20,),

          ProfileCardWidget(name: "Publish new Book",onTap: (){ Get.to(BookUplodeScreenView()); },),
          ProfileCardWidget(name: "View your Books",onTap: (){Get.to(YourBooksScreen());},),
          ProfileCardWidget(name: "Privacy Policy",),
          ProfileCardWidget(name: "Contract",),
          ProfileCardWidget(name: "Help",),
          ProfileCardWidget(name: "Log out",),
          Padding(  padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [





               // const Text("View your All Books"),
              ],
            ),
          ),
          

        ],),
      ),
    );
  }
}
