import 'package:flutter/material.dart';

class SearchCourse extends StatelessWidget {

  Function changeTilesAccordingToSearchedText;

  SearchCourse(this.changeTilesAccordingToSearchedText);

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
            onChanged: (text) =>{
              changeTilesAccordingToSearchedText(text)
            },
          ),
          trailing: IconButton(
            onPressed: () {

            },
            icon: Icon(Icons.close),
          ),
        ),
      ),
    );
  }
}