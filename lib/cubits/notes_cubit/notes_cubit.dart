import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import '../../models/note_model.dart';
import 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel>? notes;

  fetchNotes() {
    // emit(NotesLoading());
    var notesBox = Hive.box<NoteModel>('notes_box');
    notes = notesBox.values.toList();
    emit(NotesSuccess());
  }
}
