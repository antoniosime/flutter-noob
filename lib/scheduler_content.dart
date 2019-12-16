import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'events.dart';

class SchedulerContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ev = Provider.of<Events>(context);

    return Expanded(
      child: ev.list.length > 0
          ? ListView.builder(
              itemCount: ev.list.length,
              itemBuilder: (BuildContext context, int index) {
                return ev.list.elementAt(index);
              },
            )
          : Center(
              child: Text(
                "No events",
                style: Theme.of(context).textTheme.title,
              ),
            ),
    );
  }
}
