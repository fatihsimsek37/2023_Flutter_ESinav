import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:e_sinav/app.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return App.getLayout(context, Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text("Adı Soyadı"),
            const Text("Şifre"),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/quizes");
                },
                child: const Text("Giriş"))
          ],
        )));
  }
}
