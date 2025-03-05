import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_form_field.dart';
class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
            context: context,
            builder: (context) {
              return Container(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomTextFormField(
                        hintText: 'title',
                      ),
                      CustomTextFormField(
                        hintText: 'task',
                        maxLine: 4,
                      ),
                    ],
                  ),
                ),
              );
            });
      },
      child: Icon(Icons.add),
    );
  }
}