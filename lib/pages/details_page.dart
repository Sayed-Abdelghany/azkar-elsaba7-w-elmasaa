import 'package:flutter/material.dart';
class DetailsPage extends StatelessWidget {
  final String productName;
  final int no;

  DetailsPage({required this.productName, required this.no});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(productName),
      ),
      body: Center(
        child: Text('\$${no}'),
      ),
    );
  }
}