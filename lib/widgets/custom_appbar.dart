import 'package:flutter/material.dart';
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFF3A2E39),
      elevation: 2,
      title: Text(
        'Notes',
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: GestureDetector(
            child: Icon(
              Icons.search,
              color: Colors.white,
              size: 26,
            ),
          ),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}