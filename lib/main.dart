import 'package:beeline_assistant/presentation/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: unused_import, library_prefixes
// import 'package:beeline_assistant/dependency_injector.dart' as DI;


import 'services/ui/CustomScrollBehavior.dart';

final globalNavigatorKey = GlobalKey<NavigatorState>();
final RouteObserver<ModalRoute> routeObserver = RouteObserver<ModalRoute>();

void main() async {
  // await DI.init();

  // Responsibility();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'UVED',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryColor: const Color.fromRGBO(63, 159, 152, 1),
        primaryColorDark: const Color.fromRGBO(36, 33, 100, 1),
        hoverColor: const Color.fromRGBO(39, 174, 96, 1),
        backgroundColor: const Color.fromRGBO(245, 245, 245, 1),
        scaffoldBackgroundColor: const Color.fromRGBO(236, 245, 245, 1),
        errorColor: const Color.fromRGBO(255, 75, 85, 1),
        buttonTheme: const ButtonThemeData(
          buttonColor: Color.fromRGBO(63, 116, 216, 1),
          disabledColor: Color.fromRGBO(138, 138, 138, 1.0),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}


