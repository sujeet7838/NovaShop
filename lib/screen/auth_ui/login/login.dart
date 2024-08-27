import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:novashop/constants/routes,dart';
import 'package:novashop/screen/auth_ui/sign_up/signup.dart';
import 'package:novashop/widgets/primary_button/primary_button.dart';
import 'package:novashop/widgets/top_tittles/top_tittles.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    bool isShowPassword = false;
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TopTitles(
            title: "Login",
            subTittle: "Welcome Back To E Commerce App",
          ),
          const SizedBox(
            height: 12.0,
          ),
          TextFormField(
            controller: email,
            decoration: const InputDecoration(
              hintText: "E-mail",
              prefixIcon: Icon(
                Icons.email_outlined,
              ),
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          TextFormField(
            obscureText: isShowPassword,
            controller: password,
            decoration: InputDecoration(
              hintText: "Password",
              prefixIcon: const Icon(
                Icons.email_outlined,
              ),
              suffixIcon: CupertinoButton(
                  onPressed: () {
                    isShowPassword = !isShowPassword;
                  },
                  padding: EdgeInsets.zero,
                  child: Icon(
                    isShowPassword ? Icons.visibility : Icons.visibility_off,
                    color: Colors.grey,
                  )),
            ),
          ),
          const SizedBox(
            height: 36.0,
          ),
          PrimaryButton(
            tittle: "Login",
            onPressed: () async {
              // bool isVaildated = loginVaildation(email.text, password.text);
              // if (isVaildated) {
              //   bool isLogined = await FirebaseAuthHelper.instance
              //       .login(email.text, password.text, context);
              //   if (isLogined) {
              //     Routes.instance.pushAndRemoveUntil(
              //         widget: const CustomBottomBar(), context: context);
              //   }
              // }
            },
          ),
          const SizedBox(
            height: 24.0,
          ),
          const Center(child: Text("Don't have an account?")),
          const SizedBox(
            height: 12.0,
          ),
          Center(
            child: CupertinoButton(
              onPressed: () {
                Routes.instance.push(widget: const SiginUp(), context: context);
              },
              child: Text(
                "Create an account",
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
