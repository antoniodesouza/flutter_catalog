import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import './constants.dart';
import './my_app_settings.dart';
import './my_main_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsOnMobile) {
    await Firebase.initializeApp();
  }
  final settings = await MyAppSettings.create();
  runApp(MyMainApp(settings));
}
