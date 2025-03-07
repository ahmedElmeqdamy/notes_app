import 'package:flutter/material.dart';

import 'note_item.dart';
class NotesItemList extends StatelessWidget {
  const NotesItemList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return NoteItem();
      },
      itemCount: 10,
    );
  }
}