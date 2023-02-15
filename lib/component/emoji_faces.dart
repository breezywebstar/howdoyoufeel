import 'package:flutter/material.dart';

class EmojiFaces extends StatelessWidget {
  final String emojiFace;
  const EmojiFaces({required this.emojiFace, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.blue[600], borderRadius: BorderRadius.circular(12)),
        padding: EdgeInsets.all(12),
        child: Text(
          emojiFace,
          style: TextStyle(fontSize: 30),
        ));
  }
}
