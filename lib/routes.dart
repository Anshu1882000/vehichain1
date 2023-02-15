import 'package:flutter/material.dart';
import 'package:vehichain1/screens/login.dart';
import 'package:vehichain1/screens/officials/official_form.dart';
import 'package:vehichain1/screens/officials/officials_home.dart';
import 'package:vehichain1/screens/past_events.dart';
import 'package:vehichain1/screens/pending_events.dart';
import 'package:vehichain1/screens/user/user_form.dart';
import 'package:vehichain1/screens/user/user_details.dart';
import 'package:vehichain1/screens/user/user_home.dart';

Map<String, Widget Function(BuildContext)>  routes = {
  Login.routeName: (context) => const Login(),
  UserHome.routeName: (context) => const UserHome(),
  OfficialHome.routeName: (context) => OfficialHome(),
  UserDetails.routeName: (context) => UserDetails(),
  UserForm.routeName: (context) => UserForm(),
  OfficialForm.routeName: (context) => OfficialForm(),
  PendingEvents.routeName: (context) => PendingEvents(),
  PastEvents.routeName: (context) => PastEvents(),
};
