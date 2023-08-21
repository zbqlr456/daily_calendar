import 'package:client/component/calendar.dart';
import 'package:client/component/daily_circle.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('달력'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Calendar(),
            DailyCircle(),
          ],
        ),
      ),
    );
  }
}
