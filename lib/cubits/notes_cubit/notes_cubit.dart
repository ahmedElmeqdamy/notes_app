import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import '../../models/note_model.dart';
import 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  Future<void> fetchNotes() async {
    emit(NotesLoading());
    try {
      await Future.delayed(Duration(seconds: 5));
      var notesBox = Hive.box<NoteModel>('notes_box');
      emit(NotesSuccess(notes: notesBox.values.toList()));
    } catch (e) {
      emit(NotesFailure(errorMessage: 'Error is $e'));
    }
  }
}
