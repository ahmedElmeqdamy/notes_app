import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_notes_cubit/add_notes_cubit.dart';
class ColorItem extends StatelessWidget {
  ColorItem({super.key, required this.isSelected, required this.color});

  final bool isSelected;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? CircleAvatar(
      radius: 20,
      backgroundColor: color,
      child: Icon(Icons.done),
    )
        : CircleAvatar(
      radius: 20,
      backgroundColor: color,

    );
  }
}

class ColorsList extends StatefulWidget {
  ColorsList({super.key});

  @override
  State<ColorsList> createState() => _ColorsListState();
}

class _ColorsListState extends State<ColorsList> {
  int? currentIndex ;
  List<Color> colorsPalette = [
    Color(0xFFD2E3FC),
    Color(0xFFFAD2CF),
    Color(0xFFFEEFC3),
    Color(0xFFCEEAD6),
    Color(0xFF9AA0A6),
    Color(0xFF202124),Color(0xFFF1F3F4),

  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            currentIndex = index;
            BlocProvider.of<AddNoteCubit>(context).color = colorsPalette[index];
            setState(() {});
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ColorItem(
              isSelected: currentIndex == index,
              color: colorsPalette[index],
            ),
          ),
        );
      },
      itemCount: colorsPalette.length,
    );
  }
}
