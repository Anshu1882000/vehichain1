import 'package:flutter/material.dart';
import 'package:vehichain1/screens/officials/official_form.dart';
import 'package:vehichain1/screens/user/user_form.dart';
import 'package:vehichain1/screens/user/user_details.dart';

import '../../widgets/custom_flat_button.dart';

class OfficialHome extends StatefulWidget {
  static const routeName = "/official-home";
  const OfficialHome({Key? key}) : super(key: key);

  @override
  State<OfficialHome> createState() => _OfficialHomeState();
}

class _OfficialHomeState extends State<OfficialHome> {

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
              CustomFlatButton(
                title: "Add task",
                onTap: () {
                  Navigator.of(context).pushNamed(OfficialForm.routeName);
                },
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
