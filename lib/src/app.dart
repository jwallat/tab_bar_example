import "package:flutter/material.dart";
import "details_tab_bar.dart";

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Cookmergency :)"),
          //backgroundColor: Colors.transparent,
        ),
        body: DetailsTabBar("data"),
      ),
    );
  }
}
