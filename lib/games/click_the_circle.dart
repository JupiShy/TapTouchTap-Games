import 'package:flutter/material.dart';

class ClickTheCircle extends StatelessWidget {
  const ClickTheCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Click The Circle"),
      ),
      body: Center(
        child: Text(
          "Welcome to the new page!",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
