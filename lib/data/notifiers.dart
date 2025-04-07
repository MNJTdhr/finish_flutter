//ValueNotifier: hold the data
// ValueListenableBuilder: listen to the data (dont need the setstate)
//lib/data/notifiers.dart
import 'package:flutter/material.dart';
ValueNotifier<int> selectedPageNotifier = ValueNotifier(0);
