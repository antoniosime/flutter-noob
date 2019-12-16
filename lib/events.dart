import 'package:flutter/material.dart';
import 'package:scheduler/event_item.dart';
import 'package:scheduler/test_data.dart';

class Events with ChangeNotifier {
  DateTime _dateTime;
  List<EventItem> list;

  Events() {
    _dateTime = DateTime.now();
    filterEvents(_dateTime);
  }

  filterEvents(DateTime time) {
    list = new List<EventItem>();
    TempData data = new TempData();
    for (var item in data.eventItems) {
      if (item.startTime.difference(time).inDays == 0) {
        list.add(item);
      }
    }
    notifyListeners();
  }
  
}
