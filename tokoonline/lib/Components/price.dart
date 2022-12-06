import 'package:flutter/material.dart';

import '../constants.dart';

class Price extends StatelessWidget {
  const Price({
    Key? key,
    required this.product,
    required this.amount,
  }) : super(key: key);
  final String amount;
  final String product;
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        
      ),
    );
  }
}