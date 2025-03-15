import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  final NoteModel notes;

  const NoteItem({
    super.key,
    required this.notes,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return EditNoteView(notes: notes);
        }));
      },
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Container(
          decoration: BoxDecoration(
              color: Color(notes.color),
              borderRadius: BorderRadius.circular(20)),
          child: ListTile(
            selected: true,
            isThreeLine: true,
            trailing: Column(
             crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                GestureDetector(
                  child: Icon(
                    Icons.delete,
                    color: Color(0xFFFAD2CF),
                  ),
                  onTap: () {
                    notes.delete();
                    BlocProvider.of<NotesCubit>(context).fetchNotes();
                  },
                ),
                SizedBox(height: 10,),
                Text(
                 notes.dateTime,
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
              ],
            ),
            title: Text(
              notes.title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            subtitle: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  notes.subTitle,
                  style: TextStyle(fontSize: 19),
                ),
                // Text(
                //   '',
                //   style: TextStyle(fontSize: 19),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }












}
