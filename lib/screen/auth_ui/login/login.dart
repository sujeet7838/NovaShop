import 'package:flutter/material.dart';
import 'package:novashop/constants/asset_images.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: kToolbarHeight + 10,
          ),
          const Text("Welcome",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              )),
          const Text("Buy any item from using app",
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.normal,
              )),
          const SizedBox(
            height: 12,
          ),
          Center(child: Image.asset(AssetsImages.instance.welcomeImages)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.facebook,
                color: Colors.blue,
                size: 35.0,
              ),
              const SizedBox(
                width: 12.0,
              ),
              Image.asset(
                AssetsImages.instance.googleLogo,
                scale: 30.0,
              )
            ],
          ),
        ],
      ),
    ));
  }
}
