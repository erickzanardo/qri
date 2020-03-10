import 'package:flutter/material.dart';

import './widgets/console.dart';

void main() => runApp(QriConsole());

class QriConsole extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF247fa3),
        primaryColorDark: Color(0xFF165873),
      ),
      darkTheme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFFebae34),
        primaryColorDark: Color(0xFFa37924),
      ),
      home: Console(),
    );
  }
}

