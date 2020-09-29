import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:simpleapp/searchBar.dart';
import 'package:simpleapp/customeListTileMenu.dart';
import 'package:simpleapp/ContainerExpandTile.dart';

void main() => runApp(MaterialApp(home: homeUi()));

// ignore: camel_case_types
class homeUi extends StatefulWidget {
  @override
  _homeUiState createState() => _homeUiState();
}

// ignore: camel_case_types
class _homeUiState extends State<homeUi> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.purple[50],
          appBar: AppBar(
            title: Text('Home'),
            backgroundColor: Colors.deepPurple,
          ),
          drawer: Drawer(
            child: ListView(
              children: <Widget>[
                Container(
                  child: DrawerHeader(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: <Color>[
                        Colors.deepPurple,
                        Colors.purple,
                      ])),
                      child: Center(
                        child: Column(
                          children: <Widget>[
                            Icon(
                              Icons.person_outline,
                              size: 60,
                              color: Colors.black,
                            ),
                            Text(
                              'Profile',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      )),
                ),
                customeLIstTile(
                    Icons.supervisor_account,
                    'About Us',
                    () => {
                          print(
                              'Parish so enable innate in formed missed.\n Hand two was eat busy fail. \nStand smart grave would in so. \nBe acceptance at precaution astonished excellence \nthoroughly is entreaties. \nWho decisively attachment has dispatched.\n Fruit defer in party me built under first. \nForbade him but savings sending ham general.\n So play do in near park that pain. '),
                        }),
                customeLIstTile(Icons.help, 'Support', () => {}),
                customeLIstTile(Icons.language, 'language', () => {}),
                customeLIstTile(Icons.settings, 'Settings', () => {}),
                customeLIstTile(
                    Icons.add_location, 'Choose Location', () => {}),
                customeLIstTile(
                  Icons.exit_to_app,
                  'Logout',
                  () => Navigator.pushNamed(context, '/'),
                ),
              ],
            ),
          ),
          body: Column(
            children: <Widget>[
              Expanded(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      searchField(),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: containerTile(color: Colors.amber),
              ),
              Expanded(
                child: Container(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: containerTile(
                          color: Colors.red,
                        ),
                      ),
                      Expanded(
                        child: containerTile(
                          color: Colors.pinkAccent,
                        ),
                      ),
                      Expanded(
                        child: containerTile(
                          color: Colors.teal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
