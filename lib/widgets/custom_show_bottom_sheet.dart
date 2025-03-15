import 'package:flutter/material.dart';


import 'add_note_bottom_sheet.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
          isScrollControlled: true,
            context: context,
            builder: (context) {
              return AddNoteBottomSheet();
            });
      },
      child: Icon(Icons.add),
    );
  }
}



