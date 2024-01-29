import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  static const String id = "details_page";
  final String? userId;

  const DetailsPage({super.key, this.userId});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  back() {
    Map map = {"data": "Works fine hello world"};
    Navigator.of(context).pop(map);
  }

  @override
  void initState() {

    super.initState();
    print("Details page ${widget.userId}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          color: Colors.green,
          textColor: Colors.white,
          child: Text("Flutter ${widget.userId}"),
          onPressed: () {
            back();
          },
        ),
      ),
    );
  }
}
