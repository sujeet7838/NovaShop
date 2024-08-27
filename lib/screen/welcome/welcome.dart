import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:novashop/constants/asset_images.dart';
import 'package:novashop/constants/routes,dart';
import 'package:novashop/screen/auth_ui/login/login.dart';
import 'package:novashop/screen/auth_ui/sign_up/signup.dart';
import 'package:novashop/widgets/primary_button/primary_button.dart';
import 'package:novashop/widgets/top_tittles/top_tittles.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(12.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TopTitles(
              title: "Welcome",
              subTittle: "Buy any item from using app",
            ),
            const SizedBox(
              height: 12,
            ),
            Center(child: Image.asset(AssetsImages.instance.welcomeImages)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CupertinoButton(
                  onPressed: () {},
                  padding: EdgeInsets.zero,
                  child: const Icon(
                    Icons.facebook,
                    color: Colors.blue,
                    size: 35.0,
                  ),
                ),
                const SizedBox(
                  width: 12.0,
                ),
                CupertinoButton(
                  onPressed: () {},
                  padding: EdgeInsets.zero,
                  child: Image.asset(
                    AssetsImages.instance.googleLogo,
                    scale: 30.0,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 18.0),
            PrimaryButton(
              tittle: "Login",
              onPressed: () {
                Routes.instance.push(widget: const Login(), context: context);
              },
            ),
            const SizedBox(height: 18.0),
            PrimaryButton(
              tittle: "Sign Up",
              onPressed: () {
                Routes.instance.push(widget: const SiginUp(), context: context);
              },
            ),
          ],
        ),
      ),
    ));
  }
}
