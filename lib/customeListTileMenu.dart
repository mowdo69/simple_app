import 'package:flutter/material.dart';


class customeLIstTile extends StatelessWidget {
  IconData icon;
  String text;
  Function onTap;
  customeLIstTile(this.icon, this.text, this.onTap);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey[200])),
        ),
        child: InkWell(
          splashColor: Colors.purpleAccent,
          onTap: onTap,
          child: Container(
            height: 49,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(icon),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(text),
                    ),
                  ],
                ),
                Icon(Icons.arrow_right),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
