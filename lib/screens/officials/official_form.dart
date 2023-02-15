import 'package:flutter/material.dart';
import 'package:vehichain1/screens/past_events.dart';

import '../../widgets/custom_flat_button.dart';

class OfficialForm extends StatefulWidget {
  const OfficialForm({super.key});
  static const routeName = "/official-form";
  @override
  State<OfficialForm> createState() => _OfficialFormState();
}

class _OfficialFormState extends State<OfficialForm> {
//late File _image;
  String _description = "";
  String _id = "";

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      print('Selected value: $_selectedValue');
//print('Image: $_image');
      print('Description: $_description');
    }
  }

  var items = [
    "Overspeeding",
    "Driving slow",
    "Illegal lane change",
    "Agressive driving",
    "Signal or sign violation"
  ];

  String _selectedValue = "Overspeeding";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 40),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Hi, Rajesh",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: () {
                      //Navigator.of(context).pushNamed(UserDetails.routeName);
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(
                        child: Text(
                          "R",
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
              Text(DateTime.now().toString()),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Unique Driver ID",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(color: Colors.black),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      color: Color.fromRGBO(229, 229, 229, 1),
                    ),
                  ),
                ),
                maxLines: 1,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a id';
                  }
                  return null;
                },
                onSaved: (value) {
                  setState(() {
                    _id = value!;
                  });
                },
              ),
              const SizedBox(height: 10,),
              const Text(
                "Task",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              DropdownButtonFormField(
                value: _selectedValue,

                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),

                // Array list of items
                items: items.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (String? value) {
                  setState(() {
                    _selectedValue = value!;
                  });
                },
                decoration: const InputDecoration(
                  focusColor: Colors.black,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Description",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(color: Colors.black),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      color: Color.fromRGBO(229, 229, 229, 1),
                    ),
                  ),
                ),
                maxLines: 4,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a description';
                  }
                  return null;
                },
                onSaved: (value) {
                  setState(() {
                    _description = value!;
                  });
                },
              ),
              const SizedBox(
                height: 20,
              ),
              CustomFlatButton(
                title: "Submit",
                onTap: () {
                  //Navigator.of(context).pushReplacementNamed(UserHome.routeName);
                },
              ),
              const SizedBox(
                height: 20,
              ),
              CustomFlatButton(
                title: "Past Events",
                onTap: () {
                  Navigator.of(context).pushReplacementNamed(PastEvents.routeName);
                },
                buttonColor: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
