import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'screens/main_screen.dart';

void main() async {
  await initializeDateFormatting();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MainScreen());
  }
}
