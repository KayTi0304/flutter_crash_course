import 'package:flutter/material.dart';
import 'package:sample/rows_cols.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hey"),
      ),
      body: const ColsPage(),
      bottomNavigationBar: const BottomAppBar(
        color: Colors.yellow,
        child: SizedBox(
          height: 50,
          child: Text(
            "Totally cool about it",
          ),
        ),
      ),
    );
  }
}
