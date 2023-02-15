import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class PendingEventWidget extends StatelessWidget {
  final data;
  const PendingEventWidget({required this.data, super.key});

  static const Map customColor = {
    "Approved": Colors.lightGreen,
    "Pending": Colors.amber,
    "Rejected": Colors.redAccent
  };
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              data["name"],
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(DateFormat('dd MMMM, yyyy').format(data["date"])),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: Text("Accept"),
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      elevation: 2,
                      backgroundColor: Colors.green.shade500,
                    ),
                  ),
                ),
                const SizedBox(width: 8,),
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: Text("Reject"),
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      elevation: 2,
                      backgroundColor: Colors.red,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
