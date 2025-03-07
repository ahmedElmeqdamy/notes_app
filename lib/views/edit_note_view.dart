import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_form_field.dart';
import '../constants.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar('Edit_Notes',Icons.done),
      body: Container(
        child: Column(
          children: [
            CustomTextFormField(hintText: 'title'),
            CustomTextFormField(
              hintText: 'content',
              maxLine: 4,
            ),
          ],
        ),
      ),
    );
  }
}
