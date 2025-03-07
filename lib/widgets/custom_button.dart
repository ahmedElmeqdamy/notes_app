import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF1F4D54), // الأزرق الغامق
        foregroundColor: Colors.white, // لون النص
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        shadowColor: Color(0xFFE6A578), // برتقالي دافئ للظل
        elevation: 5,
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
}
