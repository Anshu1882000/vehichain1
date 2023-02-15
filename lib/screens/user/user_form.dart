import 'package:flutter/material.dart';

import '../../widgets/custom_flat_button.dart';

class UserForm extends StatefulWidget {
  const UserForm({super.key});
  static const routeName = "/user-form";
  @override
  State<UserForm> createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
//late File _image;
  String _description = "";

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
    "Insurance Premium Paid",
    "Insurence claimed",
    "Pollution Certificate Renewed",
    "Licence Renewed"
  ];

  String _selectedValue = "Insurance Premium Paid";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 40),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // InkWell(
              //       onTap: (() {
              //         Navigator.of(context).pop();
              //       }),
              //       child: const Icon(Icons.arrow_back, size: 40,color: Colors.black,),
              //     ),
              Text(DateTime.now().toString()),
              const SizedBox(
                height: 10,
              ),
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
                  focusColor: Colors.black,),
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
            ],
          ),
        ),
      ),
    );
  }
}
