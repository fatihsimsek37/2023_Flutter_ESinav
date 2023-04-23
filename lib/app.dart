import 'package:flutter/material.dart';
import 'package:e_sinav/data.dart';

class App{
  static Scaffold getLayout(BuildContext context, Widget? body){
    return Scaffold(
        appBar: AppBar(
          title: const Text(appData.appName),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.more_vert),
              tooltip: 'About',
              onPressed: () {
                Navigator.of(context).pushNamed("/about");
              },
            )
          ],
        ),
        body: body );

  }
}