import 'package:flutter/material.dart';
import 'package:vehichain1/screens/officials/official_form.dart';

import '../widgets/custom_flat_button.dart';
import './user/user_home.dart';
import 'officials/officials_home.dart';

class Login extends StatefulWidget {
  static const routeName = "/login";
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController id = TextEditingController();
  bool idVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(left: 15, right: 15, top: 40, bottom: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Unique Id",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: id,
                style: const TextStyle(fontSize: 16, color: Colors.black),
                obscureText: !idVisible,
                onChanged: (val) {
                  setState(() {

                  });
                },
                // inputFormatters: [
                //   FilteringTextInputFormatter.deny(RegExp(r'\s')),
                // ],
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
                  suffixIcon: InkWell(
                    onTap: () {
                      setState(
                        () {
                          idVisible = !idVisible;
                        },
                      );
                    },
                    child: Icon(
                      idVisible
                          ? Icons.visibility_rounded
                          : Icons.visibility_off_rounded,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              CustomFlatButton(
                title: "Login",
                onTap: () {
                  if (id.text.contains("off")) {
                    Navigator.of(context).pushReplacementNamed(OfficialForm.routeName);
                  } else {
                    Navigator.of(context).pushReplacementNamed(UserHome.routeName);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
