import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/cubits/notes_cubit/notes_state.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'note_item.dart';

class NotesItemList extends StatelessWidget {
  const NotesItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<NotesCubit>(context).notes ?? [];

        return ListView.builder(
          itemCount: notes.length,
          itemBuilder: (context, index) {
            final note = notes[index];

            return Dismissible(
              key: Key(note.title),
              direction: DismissDirection.endToStart,
              background: Padding(
                padding:  EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.redAccent,
                  ),
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.centerRight,
                  child: Icon(Icons.delete, color: Colors.white),
                ),
              ),
              onDismissed: (direction) async {
                final box = Hive.box<NoteModel>('notes_box');
                await box.deleteAt(index);

                BlocProvider.of<NotesCubit>(context).fetchNotes();

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Note Deleted')),
                );
              },
              child: NoteItem(notes: note),
            );
          },
        );
      },
    );
  }
}
