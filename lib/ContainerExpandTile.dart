import 'package:flutter/material.dart';



// ignore: must_be_immutable, camel_case_types
class containerTile extends StatelessWidget{
  Color color;
  containerTile({this.color});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(

      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: color ,
      ),
    );
  }
  
}
