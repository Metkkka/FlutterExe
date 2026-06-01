//ValueNotifier -> Holds data
//ValueListenableBuilder -> Listen to the data

import 'package:flutter/material.dart';

ValueNotifier<int> selectedPageNotifier = ValueNotifier(0);

ValueNotifier<bool> isLightNotifier = ValueNotifier(false);

ValueNotifier<int> numberSelectedNotifier = ValueNotifier(0);

ValueNotifier<String> textFieldNotifier = ValueNotifier("");