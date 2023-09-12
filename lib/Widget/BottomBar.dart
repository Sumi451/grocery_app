import 'package:flutter/material.dart';
class BottomBar extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        child: Container(
          height: 70,
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.white,
          ),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Text("\u20B913",style: TextStyle(
               fontSize: 25,
               fontWeight: FontWeight.bold,
             ),),
             InkWell(
               onTap: (){},
               child: Container(
                 padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                 decoration: BoxDecoration(
                   color: Colors.deepOrange,
                   borderRadius: BorderRadius.circular(30),
                 ),
                 child: Row(
                   children: [
                     Icon(Icons.add_shopping_cart,color: Colors.black,
                     size: 28,),
                     SizedBox(width: 5,),
                     Text("Add",
                     style: TextStyle(
                       color: Colors.black,
                       fontWeight: FontWeight.bold,
                     ),
                     )
                   ],
                 ),
               ),
             )
           ],
         ),
        )
    );
  }
}
