import 'package:flutter/material.dart';
import 'package:sample/sample_rows_cols.dart';

class SampleMainPage extends StatelessWidget {
  const SampleMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hi"),
      ),
      body: SampleCol(),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          color: Colors.blue,
          height: 100,
          child: Text("Bottom bar"),
        ),
      ),
    );
  }
}
