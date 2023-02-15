import 'package:flutter/material.dart';
import 'package:vehichain1/screens/past_events.dart';
import 'package:vehichain1/screens/pending_events.dart';
import 'package:vehichain1/screens/user/user_form.dart';
import 'package:vehichain1/screens/user/user_details.dart';
import 'package:vehichain1/widgets/score_meter.dart';

import '../../widgets/custom_flat_button.dart';

class UserHome extends StatefulWidget {
  static const routeName = "/user-home";
  const UserHome({Key? key}) : super(key: key);

  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  final int _value = 500;
  final List<String> items = [
    "Insurance Premium Paid",
    "Insurence claimed",
    "Pollution Certificate Renewed",
    "Licence Renewed"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 40),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Hi, Anshu",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed(UserDetails.routeName);
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(
                        child: Text(
                          "A",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ScoreMeter(
                value: _value,
              ),
              // Center(
              //   child: Text(
              //     "$_value",
              //     style: const TextStyle(
              //         fontSize: 40, fontWeight: FontWeight.bold),
              //   ),
              // ),
              // Row(
              //   children: const [
              //     Text(
              //       "Tasks",
              //       style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              //     ),
              //   ],
              // ),
              const SizedBox(
                height: 10,
              ),
              // ...items.map((item) {
              //   return InkWell(
              //     onTap: (() {
              //       Navigator.of(context).pushNamed(UserForm.routeName);
              //     }),
              //     child: Card(
              //       child: Padding(
              //         padding: const EdgeInsets.symmetric(
              //             horizontal: 10, vertical: 20),
              //         child: Center(
              //           child: Text(
              //             item,
              //             style: const TextStyle(
              //                 fontSize: 20, fontWeight: FontWeight.w500),
              //           ),
              //         ),
              //       ),
              //     ),
              //   );
              // }).toList(),
              SizedBox(
                height: 20,
              ),
              CustomFlatButton(
                title: "Pending Events",
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(PendingEvents.routeName);
                },
              ),
              SizedBox(
                height: 20,
              ),
              CustomFlatButton(
                title: "Past Events",
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(PastEvents.routeName);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
