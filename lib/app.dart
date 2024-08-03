import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'flavors.dart';
import 'screens/home_screen/home_screen.dart';

class App extends StatelessWidget {

  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: F.title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        switchTheme: SwitchThemeData(
          
        )
      ),
      home: const HomeScreen()
    );
  }

}

