import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: Modular.navigatorKey,
      title: 'How To Do Loja Stores',
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      initialRoute: '/',
      onGenerateRoute: Modular.generateRoute,
    );
  }
}
