import 'package:flutter/material.dart';
import 'package:vehichain1/widgets/past_event_widget.dart';

class PastEvents extends StatefulWidget {
  static const routeName = "past-events";
  const PastEvents({super.key});

  @override
  State<PastEvents> createState() => _PastEventsState();
}

class _PastEventsState extends State<PastEvents> {
  List pastEvents = [
    {
      "id": "skfsjlfldfl",
      "name": "Over-speeding",
      "details": "",
      "date": DateTime.now(),
      "status": "Approved"
    },
    {
      "id": "skfsjlfldfl",
      "name": "Insurance premium paid",
      "details": "",
      "date": DateTime.now(),
      "status": "Pending"
    },
    {
      "id": "skfsjlfldfl",
      "name": "Pollution certificate renewed",
      "details": "",
      "date": DateTime.now(),
      "status": "Rejected"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 40),
        child: Column(
          children: [
            ...pastEvents
                .map(
                  (e) => PastEventWidget(
                    data: e,
                  ),
                )
                .toList()
          ],
        ),
      ),
    );
  }
}
