import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scheduler/events.dart';
import 'package:scheduler/scheduler.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Scheduler Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ChangeNotifierProvider<Events>(
            create: (_) => Events(), child: Scheduler()));
  }
}
