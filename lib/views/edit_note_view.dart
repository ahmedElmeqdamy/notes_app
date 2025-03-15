import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_text_form_field.dart';
import '../constants.dart';

class EditNoteView extends StatefulWidget {
  const EditNoteView({super.key, required this.notes});

  final NoteModel notes;

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  String? title;

  String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar('Edit_Notes', Icons.done, () {
        print('notes is .... ....... ${widget.notes.title}');

        widget.notes.title = title ?? widget.notes.title;
        widget.notes.subTitle = subtitle ?? widget.notes.subTitle;
        widget.notes.save();
        BlocProvider.of<NotesCubit>(context).fetchNotes();
        Navigator.pop(context);
      }),

      //Edit notes view body
      body: Column(
        children: [
          CustomTextFormField(
            hintText: '${widget.notes.title}',
            onChanged: (value) {
              title = value;
              print('new title is $value');
            },
          ),
          CustomTextFormField(
            hintText: '${widget.notes.subTitle}',
            maxLine: 4,
            onChanged: (value) {
              subtitle = value;
            },
          ),
        ],
      ),
    );
  }
}
