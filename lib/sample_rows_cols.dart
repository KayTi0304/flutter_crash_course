import 'package:flutter/material.dart';

class SampleRow extends StatelessWidget {
  const SampleRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text("Stan NCT Dream"),
        Text("Stan LAUV"),
        Text("Stan Why Don't We"),
      ],
    );
  }
}

class SampleCol extends StatelessWidget {
  const SampleCol({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text("Stan NCT Dream"),
        Text("Stan LAUV"),
        Text("Stan Why Don't We"),
      ],
    );
  }
}

