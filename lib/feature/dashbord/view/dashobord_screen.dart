import 'package:flutter/material.dart';
import 'package:mylibrary/feature/accounts/view/profile_screen.dart';
import 'package:mylibrary/feature/favorite/view/favorite_screen.dart';
import 'package:mylibrary/feature/home/view/home_screen.dart';
import 'package:mylibrary/feature/note/view/note_screen_view.dart';
import 'package:mylibrary/util/custom_color.dart';


class DashBoardScreenView extends StatefulWidget {
  const DashBoardScreenView({super.key});

  @override
  State<DashBoardScreenView> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreenView> {

  int currentPage = 0;
  List pageList = [
    HomeScreenView(),

    FavoriteScreenView(),
    NoteScreenView(),
    ProfileScreenView()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: bodyColor,
   /*   appBar: AppBar(
        title:const Text("E Book",style: TextStyle(color:Colors.white),),
        centerTitle: true,
        backgroundColor: appColor
      )  ,*/

      body: pageList[currentPage],
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
        decoration: BoxDecoration( boxShadow: [BoxShadow(   color: appColor, ) ]),
        child: BottomNavigationBar(
          selectedItemColor: appColor,unselectedItemColor: appColor,
            //showUnselectedLabels: true,

            currentIndex: currentPage,
            onTap: (index){  setState(() {  currentPage =index;  });},
            items:const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.note_add),label: "Note"),
          BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle_outlined),label: "Account"),
        ]),
      ),
    );
  }
}
