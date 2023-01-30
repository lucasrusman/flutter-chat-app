import 'package:flutter/material.dart';

class CustomMaterialButton extends StatelessWidget {
  final String text;
  final Function() onPressed;

  const CustomMaterialButton(
      {Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: onPressed,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(32)),
          height: 55,
          child: Center(
            child: Text(text,
                style: const TextStyle(color: Colors.white, fontSize: 18)),
          ),
        ));
  }
}
