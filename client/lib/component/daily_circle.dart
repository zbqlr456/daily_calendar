import 'package:client/color/colors.dart';
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
        width: 320.0,
        height: 320.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: PRIMARY_COLOR
        ),
      ),
    );
  }
}
