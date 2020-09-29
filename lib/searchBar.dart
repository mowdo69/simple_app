import 'package:flutter/material.dart';

class searchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: Colors.purple,
          ),
          hintText: 'Search for hotels',
          //fillColor: Colors.purple,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );

  }
}
