import 'package:flutter/material.dart';

class DailyCircle extends StatefulWidget {
  const DailyCircle({super.key});

  @override
  State<DailyCircle> createState() => _DailyCircleState();
}

class _DailyCircleState extends State<DailyCircle> {
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        width: 100.0,
        height: 100.0,
      ),
    );
  }
}
