import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  const CustomWidget({super.key, required this.text, required this.icon});
  final String text;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: 65,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          children: [
            SizedBox(width: 9),
            icon,
            SizedBox(width: 15),
            Text(
              text,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }
}
