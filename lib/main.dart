import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quote_of_the_day/app.dart';

void main() {
  final mySystemTheme= SystemUiOverlayStyle.light
      .copyWith(systemNavigationBarColor: Colors.purple);

  SystemChrome.setSystemUIOverlayStyle(mySystemTheme);

  runApp(const App());
}
