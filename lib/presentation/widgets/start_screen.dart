import 'package:beeline_assistant/presentation/pages/auth/sign_up_screen.dart';
import 'package:beeline_assistant/presentation/widgets/yellow_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> with RouteAware {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/bibi.png'),
              fit: BoxFit.scaleDown,
              alignment: Alignment.bottomRight,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                  child: Container(
                constraints: const BoxConstraints(maxWidth: 400),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Привет!',
                      style: TextStyle(color: Color.fromRGBO(37, 31, 31, 1), fontSize: 32, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'Меня зовут Bi Bi. Я Ваш личный помощник!\nЧем я могу вам помочь?',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Color.fromRGBO(37, 31, 31, 1), fontSize: 16, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              )),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 38),
                  child: YellowButton(
                    title: 'Начать',
                    onPressed: () =>
                        Navigator.push(context, CupertinoPageRoute(builder: (context) => const SignUpScreen())),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
