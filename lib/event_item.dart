import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:intl/intl.dart';

class EventItem extends StatelessWidget {
  final String title;
  final String descrtiption;
  final DateTime startTime;
  final DateTime endTime;
  final Color color;
  final Widget content;

  const EventItem(
      {Key key,
      @required this.title,
      @required this.descrtiption,
      @required this.startTime,
      @required this.endTime,
      this.color,
      this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            alignment: Alignment.topRight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 4, right: 8, left: 8),
                  child: Text(
                    DateFormat('kk:mm').format(startTime),
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4, right: 8, left: 8),
                  child: Text(
                    DateFormat('kk:mm').format(endTime),
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
          content ??
              Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  color: this.color?? Colors.teal,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text(
                          "$title",
                          style: Theme.of(context).textTheme.subtitle,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "$descrtiption",
                          style: Theme.of(context).textTheme.body1,
                        )
                      ],
                    ),
                  ))
        ],
      ),
    );
  }
}
