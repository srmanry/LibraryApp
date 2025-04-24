import 'package:flutter/material.dart';
import 'package:mylibrary/util/custom_color.dart';


class NoteScreenView extends StatelessWidget {
  const NoteScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        centerTitle: true,
        backgroundColor: appColor,
        title: Text("Note",style: TextStyle(color: Colors.white),),
      ),
      body: const Column(children: [],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},
        backgroundColor: appColor,
        clipBehavior:Clip.none,
       // focusColor: appColor,
      child: const Icon(Icons.add,color: Colors.white,),),
    );
  }
}
