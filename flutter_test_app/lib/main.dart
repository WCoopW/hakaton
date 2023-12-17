import 'package:flutter/material.dart';
import 'package:flutter_test_app/screens/AddDevicePage.dart';
import 'package:flutter_test_app/screens/AuthPage.dart';

void main() {
  runApp((MaterialApp(
    debugShowCheckedModeBanner: false,
    darkTheme: ThemeData(brightness: Brightness.dark),
    themeMode: ThemeMode.dark,
    theme: ThemeData.dark(),
    routes: {
      '/auth': (_) => const AuthorizationPage(),
    },
    home: const AuthorizationPage(),
    //const HomeScreen(),
    // home: const FileUploadingScreen(),
  )));
}
