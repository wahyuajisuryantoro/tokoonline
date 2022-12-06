import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tokoonline/Buyer/home_screen.dart';
import 'package:tokoonline/Seller/detail_seller_product.dart';

class ListViewProduct extends StatefulWidget {
  const ListViewProduct({super.key});

  @override
  State<ListViewProduct> createState() => _ListViewProductState();
}

class _ListViewProductState extends State<ListViewProduct> {
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child:
        Column(
          children: <Widget> [
            Text("Product Sell",
            style: TextStyle(
              fontFamily: GoogleFonts.poppins().fontFamily,
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color:  Color(0xff000000),
            ),
            ),
            SizedBox(
              height: 12.0,
            ),
           Container(
             margin:EdgeInsets.fromLTRB(30, 0, 43.51, 0),
             width:double.infinity,
             child: Row(
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 Container(
                    margin:  EdgeInsets.fromLTRB(0, 0, 160.5, 3),
                    child: Text("Product name"),
                 ),
                 Container(
                   child: Text(
                     "Edit",
                     textAlign: TextAlign.center,
                   ),
                 )
               ], 
               ),
           ),
           Container(
             width: double.infinity,
             height: 1,
             decoration: BoxDecoration(
               color: Color(0xffb5b7c0)
            ),
           ),
           Container(
             padding:EdgeInsets.fromLTRB(0, 16, 0, 0),
             width: double.infinity,
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 Container(
                   margin: EdgeInsets.fromLTRB(30, 0, 43.01, 27),
                   height: 80,
                   child: Row(
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       Container(
                         width: 80,
                         height: 80,
                         child: Image.asset("assets/image/semangka.png",
                         fit: BoxFit.cover,
                         ),
                       ),
                       Container(
                         padding: EdgeInsets.fromLTRB(11, 15, 0, 7),
                         height: double.infinity,
                         child: Row(
                           crossAxisAlignment: CrossAxisAlignment.center,
                           children: [
                             Container(
                               margin:  EdgeInsets.fromLTRB(0, 0, 65, 6),
                               child: 
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Container(
                                     margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                     child: Text("Semangka"),
                                   ),
                                   Text("Rp. 30.000")
                                 ],
                               ),
                             ),
                             Container(
                               margin: EdgeInsets.fromLTRB(0, 14, 0, 0),
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                 children: [
                                   Container(
                                     margin: EdgeInsets.fromLTRB(3, 0, 0, 3),
                                     width: 21,
                                     height: 23,
                                     child: IconButton(onPressed: (){
                                       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                                         return DetailSellerProduct();
                                       }));
                                     },
                                     icon: Icon(Icons.edit),)
                                   ),
                                   Text("Ubah"
                                   )
                                 ],
                               ),
                             ),
                           ],
                            ),
                       ),
    
                           ],
                         ),
                       ),
                       Container(
                         margin: EdgeInsets.fromLTRB(30, 0, 43.01, 359),
                         width: double.infinity,
                         child: Row(
                           crossAxisAlignment: CrossAxisAlignment.end,
                           children: [
                             Container(
                               margin: EdgeInsets.fromLTRB(0, 0, 11, 0),
                               width: 80,
                               height: 45,
                               child: Image.asset("assets/image/anggur.jpg"),
                             ),
                             Container(
                               margin: EdgeInsets.fromLTRB(0, 0, 101, 6),
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Container(
                                     margin: EdgeInsets.fromLTRB(0, 0, 0, 10) ,
                                     child: Text(
                                       "Anggur"
                                     ),
                                   ),
                                   Text("Rp. 35.000")
                                 ],
                               ),
                             ),
                             Container(
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                 children: [
                                   Container(
                                     margin:  EdgeInsets.fromLTRB(3, 0, 0, 3),
                                     width: 21,
                                     height: 23,
                                     child: IconButton(onPressed: (){
                                       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                                         return DetailSellerProduct();
                                       }));
                                     },
                                     icon: Icon(Icons.edit),),
                                   )
                                 ],
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
             ),
        );
  }
}