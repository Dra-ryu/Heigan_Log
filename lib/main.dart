import 'package:flutter/material.dart';
import 'package:heiganlog/top_page.dart';
import 'highschool_select.dart';

void main() {
  runApp(Heigan());
}

class Heigan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: TopPage.id,
      routes: {
        TopPage.id: (context) => TopPage(),
        // Post.id: (context) => Post()
      },
    );
  }
}