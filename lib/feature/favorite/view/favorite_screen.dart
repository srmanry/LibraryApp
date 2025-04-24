import 'package:flutter/material.dart';
import 'package:mylibrary/util/custom_color.dart';
import 'package:mylibrary/util/dimensions.dart';


class FavoriteScreenView extends StatelessWidget {
  const FavoriteScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        centerTitle: true,
        backgroundColor: appColor,
        title: const Text("Favorite Books",style: TextStyle(color: Colors.white),),
      ),
      body: Padding(
          padding: const EdgeInsets.all(Dimensions.defaultSize),
          child: ListView.builder(itemBuilder: (_,index){
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: Dimensions.fifTeen),
              child: Container(
                height: Dimensions.hundred,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(Dimensions.defaultSize),),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(height: 100,width: 75,color: Colors.amberAccent,

                      child: Image.network("https://namyapress.com/wp-content/uploads/2023/03/415-C-Programming-PB-scaled.jpg",height: 80,fit: BoxFit.cover,),),

                    SizedBox(width: Dimensions.fifTeen,),
                    Expanded(child: Text("যুব উন্নয়ন অধিদপ্তর ড্রাইভিং প্রশিক্ষণযুব উন্নয়ন অধিদপ্তর ড্রাইভিং প্রশিক্ষণ যুব উন্নয়ন অধিদপ্তর ড্রাইভিং প্রশিক্ষণ যুব উন্নয়ন অধিদপ্তর ড্রাইভিং প্রশিক্ষণ  ")),

                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Align(alignment: Alignment.topLeft,child: Icon(Icons.favorite,color: Colors.red,)),
                    )
                  ],),
              ),
            );
          })
      ),
    );
  }
}
