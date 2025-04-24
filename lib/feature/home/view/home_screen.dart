import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mylibrary/util/custom_color.dart';
import 'package:mylibrary/util/styles.dart';



import 'readbook_screen.dart';

class HomeScreenView extends StatefulWidget {
  const HomeScreenView({super.key});

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: bodyColor,
      appBar: AppBar(
          title:const Text("My Library",style: TextStyle(color:Colors.white),),
          centerTitle: true,
          backgroundColor: appColor
      ),

      body: Column( children: [
          SizedBox( width: double.infinity,
          //  color: const Color.fromARGB(255, 13, 64, 219),
            child: Padding( padding: const EdgeInsets.all(15.0),
              child: Column(children: [
                 // SizedBox(  height: 60,),
             /*     const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon( Icons.person, color: Colors.white, ),
                      Text( 'E Book',style: TextStyle(    fontSize: 24, color: Color(0xfff00A28D), fontWeight: FontWeight.bold),),
                      Icon( Icons.note_add, color: Color(0xfff00A28D),)
                    ],  ),*/
                  //SizedBox( height: 50, ),
                  Container( height: 45,  width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: appColor),
                      color: Colors.white,borderRadius: BorderRadius.circular(50),),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        border: InputBorder.none,
                        hintText: "Book Name"
                      ),
                    ),
                  ),
                  ),
                  const SizedBox( height: 20, ),
                  SizedBox(height:40,
                    child: ListView.builder(scrollDirection: Axis.horizontal,
                        itemCount: cetaGoryList.length,
                        itemBuilder: (_, index) { return Padding(padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Container(
                              decoration: BoxDecoration(   color: appColor,  borderRadius: BorderRadius.circular(10)),
                              child:  Center(
                                child: Padding(  padding:     const EdgeInsets.symmetric(horizontal: 8),
                                  child: Text(" ${cetaGoryList[index]}",
                                    style: textMedium.copyWith(color:Colors.white,fontSize: 15)
                                    //TextStyle(  fontSize: 15, color: Colors.white),
                                  ),),
                              ),),
                          ); }),),
                ],),), ),
          const Text("Total Books= 100"),
            const SizedBox(height: 10,),
            Expanded(
            child: GridView.builder(itemCount: 20,

                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 3/4,
                    crossAxisCount: 2, mainAxisSpacing: 5),
                itemBuilder: (_, index) {
                  return Padding(padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: (){
                      Get.to(const PdfViewScreen());
                    },
                    child: Padding(padding: const EdgeInsets.all(8.0),
                          child: Container(
                            //color: Colors.grey[300],
                           // color: appColor,

                            child: Column(
                              children: [
                                Image.network("https://m.media-amazon.com/images/I/91h29Crb4LL._AC_UF1000,1000_QL80_.jpg",height: 200,width: double.infinity,fit: BoxFit.fill,),
                                const Expanded(child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 8.0,),
                                  child: Text("Book NameBook NameBook NameBook Name",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
                                )),
                              ],
                            ),
                          )),
                  ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}


List cetaGoryList = ["Health",
    "Religion","Academic","Sports","Programming"];