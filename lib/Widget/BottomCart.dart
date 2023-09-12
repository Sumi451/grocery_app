import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
class BottomCart extends StatelessWidget {
  const BottomCart({super.key});



  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.only(top: 20),
        height: 600,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
          Container(
            height: 300,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  for(int i=1;i<3;i++)
               Container(
                 margin: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),
                   color: Colors.white,
                   boxShadow: [
                     BoxShadow(
                       color: Colors.grey.withOpacity(0.5),
                       spreadRadius: 1,
                       blurRadius: 8
                     )
                   ]
                 ),
                 child: Row(
                   children: [
                     Padding(padding: EdgeInsets.all(10),
                       child: Image.asset("images/$i.png",
                         height: 80,
                           width: 80,),

                     ),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Container(margin: EdgeInsets.only(
                           bottom: 17,
                         ),

                           child: Text('Item Title',style: TextStyle(
                               color: Colors.black,
                             fontSize:20,
                             fontWeight: FontWeight.bold,
                           ),
                           ),
                         ),
                        Container(
                          child: Text('\u20B975',style: TextStyle(
                            color: Colors.black,
                            fontSize:18,
                            fontWeight: FontWeight.bold,
                          ),
                          ),

                        )
                       ],
                     ),
                     Spacer(),
                     Padding(
                       padding: EdgeInsets.symmetric(horizontal: 10),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.end,
                       children: [
                         Icon(Icons.disabled_by_default,
                         color: Colors.red,
                         size: 30,),
                         SizedBox(height: 25,),
                         Row(children: [
                           Container(
                             padding: EdgeInsets.all(3),
                             decoration: BoxDecoration(
                               color: Colors.white,
                               boxShadow: [
                                 BoxShadow(
                                   color: Colors.grey.withOpacity(0.5),
                                   spreadRadius: 2,
                                   blurRadius: 8,
                                 )
                               ]
                             ),
                             child: Icon(CupertinoIcons.minus),
                           ),
                           Container(
                             margin: EdgeInsets.symmetric(horizontal: 5),
                             child: Text('01',
                             style: TextStyle(
                               fontSize: 18,
                               fontWeight: FontWeight.bold,
                             ),),
                           ),
                           Container(
                             padding: EdgeInsets.all(3),
                             decoration: BoxDecoration(
                                 color: Colors.white,
                                 boxShadow: [
                                   BoxShadow(
                                     color: Colors.grey.withOpacity(0.5),
                                     spreadRadius: 2,
                                     blurRadius: 8,
                                   )
                                 ]
                             ),
                             child: Icon(CupertinoIcons.plus),
                           )
                         ],)
                       ],
                     ),
                     ),
                   ],
                 ),
               ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                  padding: EdgeInsets.all(20),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Delivery:",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      ),
                      Text("\u20B975",
                        style: TextStyle(
                          fontSize: 18,

                          color: Colors.black,
                        ),)
                  ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Total:",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text("\u20B9200",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),)
                        ],),
                    ],
                  ),
                ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    height: 80,
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("\u20B9200",style: TextStyle(
                          fontSize: 26,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),),
                        InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, "/CartScreen");
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                            decoration: BoxDecoration(
                              color: Colors.orange[800],
                            ),
                            child: Text("Pay",style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          ],
        ),
      ),
    );
  }
}
