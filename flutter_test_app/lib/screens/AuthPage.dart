import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_test_app/screens/AddDevicePage.dart';

class AuthorizationPage extends StatefulWidget {
  const AuthorizationPage({super.key});

  @override
  State<AuthorizationPage> createState() => _AuthorizationPageState();
}

class _AuthorizationPageState extends State<AuthorizationPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordControler = TextEditingController();

  bool showLogin = true;

  @override
  void initState() {
    //checkKey();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height * .1,
          ),
          const Text(
            'SUAI',
            style: TextStyle(
                fontSize: 45, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .1,
          ),
          Form(
              child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  controller: emailController,
                  obscureText: false,
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                  decoration: const InputDecoration(
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white30),
                      hintText: 'Email',
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 3),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white54, width: 1),
                      ),
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: IconTheme(
                          data: IconThemeData(color: Colors.white),
                          child: Icon(Icons.email),
                        ),
                      )),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .05),
              Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  controller: passwordControler,
                  obscureText: true,
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                  decoration: const InputDecoration(
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white30),
                      hintText: 'Password',
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 3),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white54, width: 1),
                      ),
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: IconTheme(
                          data: IconThemeData(color: Colors.white),
                          child: Icon(Icons.email),
                        ),
                      )),
                ),
              ),
            ],
          )),
          SizedBox(height: MediaQuery.of(context).size.height * .075),
          ElevatedButton(
              //     qwerty qwerty123!
              ///в теории ивент при нажатии отправит данные ))

              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddDevicePage()),
                );
              },
              child: const Text('login'))
        ],
      ),
    );
  }
  // отслеживаем изменения всех состояний. интересует ток ошибка *(го проверим)
}
