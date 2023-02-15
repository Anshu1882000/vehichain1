import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class PastEventWidget extends StatelessWidget {
  final data;
  const PastEventWidget({required this.data, super.key});

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(DateFormat('dd MMMM, yyyy').format(data["date"])),
                Container(
                  height: 30,
                  width: 100,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 6,
                  ),
                  child: Center(
                    child: Text(
                      data["status"],
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: customColor[data["status"]]),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
