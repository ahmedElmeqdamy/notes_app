import 'package:flutter/material.dart';
import '../widgets/note_item.dart';
import '../widgets/custom_show_bottom_sheet.dart';


class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CustomBottomSheet(),
      appBar: AppBar(
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
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return NoteItem();
        },
        itemCount: 10,
      ),
    );
  }
}


