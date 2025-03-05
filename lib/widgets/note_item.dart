import 'package:flutter/material.dart';
class NoteItem extends StatelessWidget {
  const NoteItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xFFF4D8CD),
            borderRadius: BorderRadius.circular(20)),
        child: ListTile(
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                child: Icon(Icons.delete,color: Color(0xFFF15152),),
                onTap: () {
                  print('deleted');
                },
              ),
              Text('jan-24-2025',style: TextStyle(fontSize: 15,color: Color(0xFFF15152)),),
            ],
          ),
          title: Text(
            'new app',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          subtitle: Text(
            'this is new app from me',
            style: TextStyle(fontSize: 19),
          ),
        ),
      ),
    );
  }
}