import 'package:flutter/material.dart';

class Labels extends StatelessWidget {
  const Labels({super.key, required this.route, required this.titleCuenta, required this.titleAuth});
  final String route;
  final String titleCuenta;
  final String titleAuth;


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
           Text(
            titleCuenta,
            style: const TextStyle(
                color: Colors.black54,
                fontSize: 15,
                fontWeight: FontWeight.w300),
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () => Navigator.pushReplacementNamed(context, route),
            child: Text(
              titleAuth,
              style: TextStyle(
                  color: Colors.blue[600],
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
