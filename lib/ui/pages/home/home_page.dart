import 'package:flutter/material.dart';
import 'package:flutterthemebloc/ui/pages/settings/settings_page.dart';

class HomePage extends StatelessWidget {
  final String title;
  HomePage({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$title > Home'),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => SettingsPage(
                            title: title,
                          )),
                );
              }),
        ],
      ),
      body: Center(),
    );
  }
}
