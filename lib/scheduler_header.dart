import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import 'events.dart';

class SchedulerHeder extends StatefulWidget {
  @override
  _SchedulerHederState createState() => _SchedulerHederState();
}

class _SchedulerHederState extends State<SchedulerHeder> {
  DateTime selectedDate = DateTime.now();
   Events ev;


  Future<Null> onDateTimeChange(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
        ev.filterEvents(selectedDate);
      });
  }

  @override
  Widget build(BuildContext context) {
    ev = Provider.of<Events>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        SizedBox(height: 27),
        Container(
          color: Colors.blueAccent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                    left: 8, right: 8, top: 16, bottom: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      width: 10,
                    ),
                    Text("DAY", style: TextStyle(color: Colors.white))
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => onDateTimeChange(context),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 16, bottom: 16, left: 8, right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        DateFormat('dd.MM.yyyy').format(selectedDate),
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(width: 2),
                      Icon(
                        Icons.calendar_today,
                        color: Colors.white,
                        size: 16,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
