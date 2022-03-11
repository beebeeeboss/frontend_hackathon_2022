import 'package:flutter/material.dart';

class SearchCourse extends StatelessWidget {
  const SearchCourse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(

      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: SizedBox(
        width: 300.0,
        child: ListTile(
          leading: Icon(Icons.search),
          title: TextField(
            decoration: InputDecoration(
              hintText: 'Search...',
              border: InputBorder.none,
            ),
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(Icons.close),
          ),
        ),
      ),
    );
  }
}