import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/Widget/BottomCart.dart';
import 'package:grocery_app/Widget/Categories.dart';
import 'package:grocery_app/Widget/Items.dart';
import 'package:grocery_app/Widget/MainProducts.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(right:20,left:15,top:10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      CupertinoIcons.profile_circled,
                      color: Colors.black,
                      size: 40,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFBF00),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [BoxShadow(
                              color:Colors.white,
                             blurRadius: 2,
                          )]
                      ),
                      child: InkWell(
                        onTap: () {
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
                        child: Icon(CupertinoIcons.cart),
                      ),
                    )
                  ],
                ),
              ),
            Container(
               alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Text('Welcome',style: TextStyle(
                    fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico',
                  ),)
                ] ,
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,

              ),
              child: Row(
                children: [
                  Icon(Icons.search),
                  Container(
                  margin: EdgeInsets.only(left: 10),
                    width: 250,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Search here...",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.filter_list),
                ],
                )
              ),
              //Products
              Container(
                padding: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Categories(),
                    MainProducts(),
                    Items(),
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );

  }
}
