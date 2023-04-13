import 'package:beeline_assistant/presentation/pages/auth/sign_up_screen.dart';
import 'package:beeline_assistant/presentation/widgets/custom_appbar.dart';
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
      appBar: const CustomAppbar(
        logout: true,
      ),
      extendBodyBehindAppBar: true,
      backgroundColor: const Color.fromRGBO(0, 0, 0, 1),
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
                      'Здравствуйте!',
                      style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1), fontSize: 43, fontWeight: FontWeight.w700),
                    ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 6)
                  ),
                    Text(
                      'Меня зовут Bibi Te. Я Ваш личный помощник.',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1), fontSize: 22, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'Я могу помочь вам по следующим вопросам',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1), fontSize: 22, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              )),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 44),
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
