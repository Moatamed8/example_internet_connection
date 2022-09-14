import 'package:flutter/material.dart';

import '../provider/connectivity_provider.dart';
import 'no_internet.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    ConnectivityProvider.of(context).startMonitoring();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return ConnectivityProvider.of(context, listen: true).isOnline
        ? const Scaffold(
            body: Center(
              child: Text("Close Your Wifi to see "),
            ),
          )
        :const  NoInternet();
  }
}
