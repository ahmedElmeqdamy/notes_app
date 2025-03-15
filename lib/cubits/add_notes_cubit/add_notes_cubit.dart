import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/cubits/add_notes_cubit/add_notes_state.dart';
import 'package:notes_app/models/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
Color color = Color(0xFD2E3FC);
  Future<void> addNote(NoteModel note) async {

    note.color=color.value;
    
    emit(AddNoteLoading());
    try {
      await Future.delayed(Duration(seconds: 1));
      var notesBox = Hive.box<NoteModel>('notes_box');
      await notesBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(errorMessage: 'Error is $e'));
    }
  }
}
