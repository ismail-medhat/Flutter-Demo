import 'package:flutter/material.dart';

class MainTitle extends StatelessWidget {
  final String title;
  final double? paddingVertial;

  const MainTitle({
    super.key,
    required this.title,
    this.paddingVertial,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: paddingVertial ?? 20.0),
      child: Text(
        title,
        style: const TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
      ),
    );
  }
}
