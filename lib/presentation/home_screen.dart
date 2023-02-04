import 'package:beeline_assistant/presentation/pages/auth/sign_up_screen.dart';
import 'package:beeline_assistant/presentation/widgets/main_menu_card.dart';
import 'package:beeline_assistant/presentation/widgets/start_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(255, 159, 0, 1),
                        Color.fromRGBO(255, 201, 0, 1)
                      ],
                    ),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Center(
                  child: Container(
                    constraints: const BoxConstraints(
                        maxWidth: 498
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        MainMenuCard(
                          title: 'Информация по Вашему номеру',
                          subTitle: 'Пополнение баланса, Тарифы, Услуги',
                          onTap: () => Navigator.push(context, CupertinoPageRoute(builder: (context) => const SignUpScreen())),
                        ),

                        const SizedBox(height: 38),

                        MainMenuCard(
                          title: 'Информация по Вашему номеру',
                          subTitle: 'Пополнение баланса, Тарифы, Услуги',
                          onTap: () => Navigator.push(context, CupertinoPageRoute(builder: (context) => const StartScreen())),
                        )

                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
