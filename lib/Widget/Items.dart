import 'package:flutter/material.dart';
import 'package:grocery_app/Widget/BottomCart.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
class Items extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.only(left: 10,
            right: 10,
        top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Top',style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              ),
              Text('See all',style: TextStyle(
                fontSize: 15,
                color: Colors.black54,
              ),
              )
            ],
          ),
        ),
        GridView.count(
         padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          crossAxisSpacing: 10,
          mainAxisSpacing: 20,
          physics: NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
        childAspectRatio: 0.8,
          shrinkWrap: true,
          children: [
            for(int i = 1;i<6;i++)
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                 color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 8,
                  )
                ]
              ),
              child: Column(
               children: [
                     InkWell(
                       onTap: (){
                         Navigator.pushNamed(context, "/itemPg");
                       },
                       child: Container(
                         margin: EdgeInsets.all(10),
                         child: Image.asset("images/$i.png",
                         height: 110,
                         width: 110,),
                       ),
                     ),
                 Padding(padding: EdgeInsets.only(bottom: 8),
                 child: Container(
                   alignment: Alignment.center,
                   child: Text("Item Title",
                     style: TextStyle(
                       fontSize: 22,
                       fontWeight: FontWeight.bold,
                       color: Colors.black87,
                     ),
                   ),
                 ),
                 ),
                 Padding(padding: EdgeInsets.symmetric(
                   vertical: 5,
                 ),
                   child: Row(
                     children: [
                       Text("\u20B920",style: TextStyle(fontSize: 20,
                         fontWeight: FontWeight.bold,
                           color: Colors.orange[900],

                       ),),
                       InkWell(
                         onTap: (){
                           showSlidingBottomSheet(
                             context,
                             builder: (context)
                             {
                               return SlidingSheetDialog(
                                   elevation: 8,
                                   cornerRadius: 15,
                                   builder: (context,state){
                                     return BottomCart();
                                   }
                               );
                             }
                         );
                         },
                         child: Container(
                           padding: EdgeInsets.all(8),
                           decoration: BoxDecoration(
                             color: Colors.orange[900],
                             borderRadius: BorderRadius.circular(10),
                           ),
                           child: Icon(Icons.add_shopping_cart,color: Colors.white,),
                         ),
                       )
                     ],
                   ),
                 )
                  ],
                 ),
               ),
          ],
        ),
      ],
    );
  }
}
