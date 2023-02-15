import 'package:flutter/material.dart';
import 'package:vehichain1/widgets/pending_event_widget.dart';

class PendingEvents extends StatefulWidget {
  static const routeName = "pending-events";
  const PendingEvents({super.key});

  @override
  State<PendingEvents> createState() => _PendingEventsState();
}

class _PendingEventsState extends State<PendingEvents> {
  List pendingEvents = [
    {
      "id": "skfsjlfldfl",
      "name": "Insurence premium paid",
      "details": "",
      "date": DateTime.now()
    },
    {
      "id": "skfsjlfldfl",
      "name": "Insurence premium paid",
      "details": "",
      "date": DateTime.now()
    },
    {
      "id": "skfsjlfldfl",
      "name": "Insurence premium paid",
      "details": "",
      "date": DateTime.now()
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 40),
        child: Column(
          children: [
            ...pendingEvents.map((e) => PendingEventWidget(data: e)).toList()
          ],
        ),
      ),
    );
  }
}
