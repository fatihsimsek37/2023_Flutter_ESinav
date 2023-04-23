import 'package:e_sinav/app.dart';
import 'package:e_sinav/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/app.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
