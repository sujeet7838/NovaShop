import 'package:flutter/material.dart';
import 'package:novashop/widgets/top_tittles/top_tittles.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopTitles(subtitle: "add Cart  ", title: "Cart"),
          ],
        ),
      ),
    );
  }
}
