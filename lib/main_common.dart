import 'package:flavors_ci_cd/config_reader.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app_widget.dart';
import 'environment.dart';

Future<void> mainCommon(String enviroment) async {
  WidgetsFlutterBinding.ensureInitialized();
  await ConfigReader.initialize();


  Color primaryColor;
  switch (enviroment) {
    case Environment.develop:
      primaryColor = Colors.blue;
      break;
    case Environment.production:
      primaryColor = Colors.red;
      break;
  }

  runApp(
    Provider.value(
      value: primaryColor,
      child: MyApp(),
    ),
  );
}