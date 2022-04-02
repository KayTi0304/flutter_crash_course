import 'package:flutter/material.dart';

class RowsPage extends StatelessWidget {
  const RowsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Text("Hi"),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Text("Stan NCT"),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Text("Stan LAUV"),
        ),
      ],
    );
  }
}

class ColsPage extends StatelessWidget {
  const ColsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(vertical: 5),
          child: Text("Hi"),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 5),
          child: Text("Stan NCT"),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 5),
          child: Text("Stan LAUV"),
        ),
      ],
    );
  }
}

