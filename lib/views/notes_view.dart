import 'package:flutter/material.dart';

import '../widgets/note_item.dart';
import '../widgets/text_form_field.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return Container(
                  color: Colors.white,
                  child: Padding(
                    padding:  EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomTextFormField(hintText: 'title', ),
                        CustomTextFormField(hintText: 'task',maxLine: 4,),
                      ],
                    ),
                  ),
                );
              });
        },
        child: Icon(Icons.add),
      ),
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
