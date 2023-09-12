import 'package:flutter/material.dart';
class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('Payment',style: TextStyle(
         fontFamily: 'Pacifico',
       ),),
       backgroundColor: Colors.orangeAccent,
     ),
     body: Padding(
       padding: EdgeInsets.all(16.0),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.stretch,
         children: <Widget>[
           Text(
             'Enter Address:',
             style: TextStyle(fontSize: 18.0),
           ),
           TextFormField(
             decoration: InputDecoration(labelText: 'Street Address'),
           ),
           TextFormField(
             decoration: InputDecoration(labelText: 'City'),
           ),
           TextFormField(
             decoration: InputDecoration(labelText: 'Postal Code'),
           ),
           SizedBox(height: 16.0),
           Text(
             'Select Payment Option:',
             style: TextStyle(fontSize: 18.0),
           ),
           DropdownButtonFormField<String>(
             items: ['Credit Card', 'DebitCard', 'UPI','Wallet']
                 .map((String option) {
               return DropdownMenuItem<String>(
                 value: option,
                 child: Text(option),
               );
             }).toList(),
             onChanged: (String? value) {
               // Handle payment option selection
             },
           ),
           SizedBox(height: 16.0),
           ElevatedButton(
             onPressed: () {
               // Handle payment submission
             },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange[900]
            ),
             child: Text('Submit Payment'),
           ),
         ],
       ),
     ),

   );

  }
}
