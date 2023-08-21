import 'package:client/color/colors.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  DateTime selectedDay = DateTime.now();


  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      focusedDay: DateTime.now(),
      firstDay: DateTime(1900),
      lastDay: DateTime(3000),
      headerStyle: HeaderStyle(
        formatButtonVisible: false,
        titleCentered: true,
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 16.0,
        ),
      ),
      onDaySelected:  (DateTime selectedDay, DateTime focusedDay){
        setState(() {
          this.selectedDay = selectedDay;
        });
      },
      selectedDayPredicate: (DateTime date){
        return date.year == selectedDay.year && date.month == selectedDay.month && date.day == selectedDay.day;
      },
      calendarStyle: CalendarStyle(
        isTodayHighlighted: false,
        defaultDecoration: BoxDecoration(
          color: Colors.grey[200],
        ),
      ),
    );
  }
}
