import 'package:flutter/material.dart';

class widgetswitch extends StatefulWidget {
  const widgetswitch({super.key});

  @override
  State<widgetswitch> createState() => _widgetswitchState();
}

class _widgetswitchState extends State<widgetswitch> {
  bool light = true;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Switch(
          value: light,
          activeColor: Colors.red,
          onChanged: (bool value) {
            setState(() {
              light = value;
            });
          }),
    );
  }
}
