import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.only(left: 10,right: 10,bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Text('Categories',style: TextStyle(
               fontSize: 25,
               fontWeight: FontWeight.bold,
               fontFamily: 'Pacifico',
             ),
             ),
            Text('more',style: TextStyle(
              fontSize: 15,
              color: Colors.black54,
            ),
            )
          ],
        ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal ,
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              for(int i=1;i<6;i++)
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 6,
                  )

                  ]


                ),
                child: Row(
                  children: [
                    Padding(padding: EdgeInsets.all(5),
                       child: Image.asset('images/$i.png',
                       height: 50,
                         width: 50,
                       ),
                    ),
                    Padding(padding: EdgeInsets.only(
                    right: 10,
                    ),
                      child: Text("Category",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),

                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

