import 'package:f_t1/common/widgets/bottom_bar.dart';
import 'package:f_t1/constants/global_variables.dart';
import 'package:f_t1/features/screens/auth_screen.dart';
import 'package:f_t1/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'h_app',
        theme: ThemeData(
            scaffoldBackgroundColor: GlobalVariables.backgroundColor,
            colorScheme: const ColorScheme.light(
              primary: GlobalVariables.secondaryColor,
            ),
            appBarTheme: const AppBarTheme(
              elevation: 0,
              iconTheme: IconThemeData(
                color: Colors.black,
              ),
            )),
        onGenerateRoute: (settings) => generateRoute(settings),
        home: const BottomBar());
  }
}
