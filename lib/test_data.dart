import 'package:flutter/material.dart';
import 'package:scheduler/event_item.dart';

class TempData {
  List<EventItem> eventItems;

  TempData() {
    eventItems = new List<EventItem>();
    this.populateList();
  }

  populateList() {
    EventItem e1 = new EventItem(
      title: "Title 1",
      descrtiption: "descrtiption",
      startTime: DateTime.now(),
      endTime: DateTime.now().add(Duration(hours: 1)),
    );

    this.eventItems.add(e1);


     e1 = new EventItem(
      title: "Title 0",
      descrtiption:
          "descrtiption ndsa  sajkd sadjsa dj sadjsa djs jd saj djsa djsa jd sjd asj ldsaldjas dkj ask d jskaj djs aj ",
      startTime: DateTime.now().add(Duration(hours: -2)),
      color: Colors.lightBlue,
      endTime: DateTime.now().add(Duration(hours: 2)),
    );

      this.eventItems.add(e1);

    e1 = new EventItem(
      title: "Title 1",
      descrtiption:
          "descrtiption ndsa  sajkd sadjsa dj sadjsa djs jd saj djsa djsa jd sjd asj ldsaldjas dkj ask d jskaj djs aj ",
      startTime: DateTime.now().add(Duration(hours: 1)),
      color: Colors.lightBlue,
      endTime: DateTime.now().add(Duration(hours: 2)),
    );

    this.eventItems.add(e1);


     e1 = new EventItem(
      title: "Title 3",
      descrtiption: "descrtiption 3",
      startTime: DateTime.now().add(Duration(hours: 6)),
      color: Colors.red,
      endTime: DateTime.now().add(Duration(hours: 1)),
      content: Container(
        padding: EdgeInsets.all(16),
        width: 290,
        color: Colors.lightGreen,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text("Take a break"),
            Image.network(
              
              'https://emagazin.mk/wp-content/uploads/2019/09/Novo-skopsko-pivo.jpg',
              fit: BoxFit.cover,
            )
          ],
        ),
      ),
    );

    this.eventItems.add(e1);

    e1 = new EventItem(
      title: "Title 3",
      descrtiption: "descrtiption 3",
      startTime: DateTime.now().add(Duration(hours: 3)),
      color: Colors.orangeAccent,
      endTime: DateTime.now().add(Duration(hours: 1)),
    );
    this.eventItems.add(e1);

    e1 = new EventItem(
      title: "Title 3",
      descrtiption: "descrtiption 3",
      startTime: DateTime.now().add(Duration(hours: 3)),
      color: Colors.lightGreen,
      endTime: DateTime.now().add(Duration(hours: 1)),
    );
    this.eventItems.add(e1);

    e1 = new EventItem(
      title: "Title 3",
      descrtiption: "descrtiption 3",
      startTime: DateTime.now().add(Duration(hours: 6)),
      color: Colors.red,
      endTime: DateTime.now().add(Duration(hours: 1)),
      content: Container(
        padding: EdgeInsets.all(16),
        width: 290,
        color: Colors.lime,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text("Repare my latop"),
            Image.network(
              'https://picsum.photos/250?image=9',
            )
          ],
        ),
      ),
    );

    this.eventItems.add(e1);
    e1 = new EventItem(
      title: "Title 3",
      descrtiption: "descrtiption 3",
      startTime: DateTime.now().add(Duration(hours: 6)),
      color: Colors.lightBlueAccent,
      endTime: DateTime.now().add(Duration(hours: 1)),
    );

    this.eventItems.add(e1);
  }
}
