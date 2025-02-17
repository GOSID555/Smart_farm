import 'package:flutter/material.dart';
import 'package:smartfarm/pages/home_page/home.dart';
import 'package:smartfarm/pages/loading_page/load_page.dart';

void main() {
  runApp(RunApp());
}

class RunApp extends StatelessWidget {
  const RunApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Load_Page(),
      ),
    );
  }
}
