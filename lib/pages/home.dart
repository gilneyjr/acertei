import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.fromLTRB(15, 15, 15, 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Acertei!',
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 167, 137),
                          fontWeight: FontWeight.w800,
                          fontSize: 30),
                    )),
                SizedBox(
                    width: double.infinity,
                    child: Container(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text('Entrar',
                                style: TextStyle(color: Colors.white)),
                            style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(
                                    255, 0, 84, 182), // background
                                onPrimary: Colors.white // foreground
                                )))),
                SizedBox(
                    width: double.infinity,
                    child: Container(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text('Cadastro',
                                style: TextStyle(color: Colors.white)),
                            style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(
                                    255, 0, 84, 182), // background
                                onPrimary: Colors.white // foreground
                                ))))
              ],
            )));
  }
}