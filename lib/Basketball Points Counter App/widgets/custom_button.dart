import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.width,
    required this.height,
  });
  final String text;
  final VoidCallback onPressed;
  final double width, height;
  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, bottom: 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xfffe9301),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          maximumSize: Size(widget.width, widget.height),
        ),
        onPressed: widget.onPressed,
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}


