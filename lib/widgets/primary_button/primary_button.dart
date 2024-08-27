import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final void Function()? onPressed;
  final String tittle;
  const PrimaryButton({super.key, this.onPressed, required this.tittle});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.0,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(tittle),
      ),
    );
  }
}
