import 'package:flutter/material.dart';

class SiginUp extends StatelessWidget {
  const SiginUp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      children: [
        Text("Welcome"),
        SizedBox(
          height: 20,
        ),
        Text("Buy any item from using app")
      ],
    ));
  }
}
