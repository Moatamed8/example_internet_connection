import 'dart:async';
import 'package:example_internet_connection/provider/connectivity_provider.dart';
import 'package:example_internet_connection/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => ConnectivityProvider(),
        child: const Home(),
      )
    ],
    child: const MaterialApp(debugShowCheckedModeBanner: false, home: Home()),
  ));
}
