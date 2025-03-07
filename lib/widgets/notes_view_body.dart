import 'package:flutter/material.dart';
import '../constants.dart';
import 'custom_show_bottom_sheet.dart';
import 'notes_item_list.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CustomBottomSheet(),
      appBar: buildAppBar(
        'Notes',
        Icons.search,
      ),
      body: NotesItemList(),
    );
  }
}
