import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tokoonline/Seller/list_view_product.dart';
import 'package:tokoonline/Seller/order.dart';

import '../Welcome_Page/buyer_and_seller.dart';

class DetailSellerProduct extends StatefulWidget {
  const DetailSellerProduct({super.key});

  @override
  State<DetailSellerProduct> createState() => _DetailSellerProductState();
}

class _DetailSellerProductState extends State<DetailSellerProduct> {
  TextEditingController namaproduk = TextEditingController();
  TextEditingController harga = TextEditingController();
  TextEditingController stock = TextEditingController();
  TextEditingController desc = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child:
        Column(
          children:<Widget> [
            Container(
              margin:  EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Text(
                "Ubah & tambah",
                style: TextStyle(
                  fontFamily: GoogleFonts.poppins().fontFamily,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color:Color(0xff000000)
                  ),
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
              width: double.infinity,
              height: 669,
              child: Stack(
                children: [
                  Positioned(
                    left: 15,
                    top: 11,
                    child: 
                    Container(
                      width: 157,
                      height: 88,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin:  EdgeInsets.fromLTRB(0, 0, 17, 0),
                            width: 80,
                            height: 80,
                            child: Image.asset("assets/image/semangka.png"),
                          ),
                        ],
                      ),                      
                    )
                  ),
            Positioned(
              left: 0,
              top: 104,
              child: Container(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              width: 360,
              height: 23,
              child: TextField(
                controller: namaproduk,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),
                  ),
                  labelText: "Nama Produk" 
               ),
              ),
              )
            ),
            Positioned(
              left: 0,
              top: 152,
              child: Container(
                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                width: 360,
                height: 23,
                child: TextField(
                  controller: harga,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)
                    ),
                    labelText: "Harga"
                )
              ),
            )
          ),
          Positioned(
              left: 0,
              top: 201,
              child: Container(
                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                width: 360,
                height: 23,
                child: TextField(
                  controller: harga,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)
                    ),
                    labelText: "Stock"
                )
              ),
            )
          ),
          Positioned(
              left: 0,
              top: 248,
              child: Container(
                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                width: 360,
                height: 23,
                child: TextField(
                  controller: desc,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)
                    ),
                    labelText: "Deskripsi Produk"
                )
              ),
            )
          ),
          Positioned(
            left: 26,
            top: 480,
            child: ElevatedButton(
                onPressed: (() {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: ((context) {
                    return OrderScreen();
                  })));
                }),
                child: Text(
                  'Simpan',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
            ),
            Positioned(
              left: 26,
              top: 541,
              child: ElevatedButton(
                onPressed: (() {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: ((context) {
                    return ListViewProduct();
                  })));
                }),
                child: Text(
                  'Hapus',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),)
       ]
    ),
  ),
 ],
),
      ),
    );
  }
}