import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:notes_app/cubits/add_notes_cubit/add_notes_state.dart';
import 'add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddNoteCubit, AddNoteState>(
      listener: (context, state) {
        if (state is AddNoteFailure) {
          print('Error is ${state.errorMessage}');
        }

        if (state is AddNoteSuccess) {
          Navigator.pop(context);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
            color: Colors.black,
            inAsyncCall: state is AddNoteLoading ? true : false,
            child: AbsorbPointer(

                absorbing: state is AddNoteLoading ? true : false,
                child: AddNoteForm()));
      },
    );
  }
}
