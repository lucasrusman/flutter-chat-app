import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      margin: const EdgeInsets.only(top: 50),
      child: Center(
          child: Column(
        children: [
          const Image(image: AssetImage('assets/tag-logo.png')),
          const SizedBox(
            height: 20,
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 30),
          )
        ],
      )),
    );
  }
}
