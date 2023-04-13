import 'dart:async';
import 'package:beeline_assistant/presentation/pages/rate/all_services_screen.dart';
import 'package:flutter/material.dart';

import 'package:beeline_assistant/presentation/widgets/start_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'presentation/pages/home/home_screen.dart';

final globalNavigatorKey = GlobalKey<NavigatorState>();

void main() async {
  // await DI.init();

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _initializeTimer();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: _handleUserInteraction,
      onPanDown: _handleUserInteraction,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        navigatorKey: globalNavigatorKey,
        title: 'BEELINE assistant',
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          primaryColor: const Color.fromRGBO(63, 159, 152, 1),
          primaryColorDark: const Color.fromRGBO(36, 33, 100, 1),
          scaffoldBackgroundColor: Colors.black,
          buttonTheme: const ButtonThemeData(
            buttonColor: Color.fromRGBO(63, 116, 216, 1),
            disabledColor: Color.fromRGBO(138, 138, 138, 1.0),
          ),
          colorScheme: const ColorScheme(
            brightness: Brightness.light,
            primary: Color(0xFF202020),
            onPrimary: Color(0xFF505050),
            secondary: Color(0xFFBBBBBB),
            onSecondary: Color(0xFFEAEAEA),
            error: Color(0xFFF32424),
            onError: Color(0xFFF32424),
            background: Color.fromRGBO(0, 0, 0, 1),
            onBackground: Color(0xFF202020),
            surface: Color(0xFF54B435),
            onSurface: Color(0xFF54B435),
          ),
        ),
        home: const AllServicesScreen(),
        // home: const StartScreen(),
      ),
    );
  }

  void _initializeTimer() {

    _timer?.cancel();

    _timer = Timer(const Duration(minutes: 12), _logOutUser);
  }

  void _logOutUser() {
    _timer?.cancel();
    _timer = null;

    globalNavigatorKey.currentState
        ?.pushReplacement(MaterialPageRoute<void>(builder: (BuildContext context) => const StartScreen()));
  }

  void _handleUserInteraction([_]) {
    _initializeTimer();
  }

}
