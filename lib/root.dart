import 'package:flutter/material.dart';

import 'screen/HomePage.dart';

class Root extends StatelessWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
      ),
      home:const HomePage(),
    );
  }
}