import 'package:flutter/material.dart';
import 'package:scheduler/scheduler_content.dart';
import 'package:scheduler/scheduler_header.dart';

class Scheduler extends StatefulWidget {
  @override
  _SchedulerState createState() => _SchedulerState();
}

class _SchedulerState extends State<Scheduler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[SchedulerHeder(), SchedulerContent()],
      ),
    );
  }
}
