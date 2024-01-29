import 'package:flutter/material.dart';
import 'package:ng_demo1/pages/details_page.dart';
import 'package:ng_demo1/pages/settings_page.dart';

class MyHomePage extends StatefulWidget {
  static const String id = "home_page";

  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Future _openDetails() async {
    var userId = "101020040314";
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return DetailsPage(userId: userId);
    }));
  }

  Future _openDetails2() async {
    var userId = "101020040314";
    Map result = await Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (BuildContext context) {
      return DetailsPage(userId: userId);
    }));

    if (result != null && result.containsKey("data")) {
      print(result['data']);
    } else {
      print("nothing");
    }
  }

  Future openDetails3() async {
    String ? idd = null;
    Navigator.of(context).pushNamed(SettingsPage.id, arguments: idd);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: MaterialButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: const Text("Open"),
        onPressed: () {
          openDetails3();
        },
      ),
    ));
  }
}
