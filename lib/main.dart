import 'package:alkometrforpolina/pages/inputpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Control());
}

class Control extends StatefulWidget {
  const Control({Key? key}) : super(key: key);

  @override
  State<Control> createState() => _ControlState();
}

class _ControlState extends State<Control> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: const InputPage());
  }
}
