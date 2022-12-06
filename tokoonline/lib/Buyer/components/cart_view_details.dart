
import 'package:flutter/material.dart';
import 'package:tokoonline/Buyer/Payment/payment_screen.dart';
import 'package:tokoonline/Buyer/Models/product_item.dart';
import '../../Controller/home_controller.dart';
import '../../constants.dart';
import 'cart_view_details_card.dart';

class CartDetailsView extends StatelessWidget {
  const CartDetailsView({Key? key, required this.controller}) : super(key: key);

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Cart", style: Theme.of(context).textTheme.headline6),
          ...List.generate(
            controller.cart.length,
            (index) => CartDetailsViewCard(productItem: controller.cart[index],),
          ),
          SizedBox(height: defaultPadding),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                  return PaymentScreen();
                }));
              },
              child: Text ("Rp. 35.000"),
            ),
          )
        ],
      ),
    );
  }
}