import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smartfarm/models/app_color.dart';
import 'package:smartfarm/pages/home_page/home.dart';

class Load_Page extends StatefulWidget {
  const Load_Page({super.key});

  @override
  State<Load_Page> createState() => _Load_PageState();
}

class _Load_PageState extends State<Load_Page>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => Home_Page(),
      ));
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.color_Dark,
      body: Center(
        child: Text(
          "S",
          style: TextStyle(color: AppColor.color_White, fontSize: 50),
        ),
      ),
    );
  }
}
