import 'package:beeline_assistant/presentation/widgets/custom_appbar.dart';
import 'package:beeline_assistant/presentation/widgets/start_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../phone/phone_information_screen.dart';
import 'components/main_menu_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        logout: true,
        leading: false,
      ),
      extendBodyBehindAppBar: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color.fromRGBO(255, 159, 0, 1), Color.fromRGBO(255, 201, 0, 1)],
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: Container(
                  constraints: const BoxConstraints(maxWidth: 498),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MenuCard(
                        title: 'Информация по Вашему номеру',
                        subTitle: 'Пополнение баланса, Тарифы, Услуги',
                        onTap: () => Navigator.push(
                            context, CupertinoPageRoute(builder: (context) => const PhoneInformationScreen())),
                      ),
                      const SizedBox(height: 38),
                      MenuCard(
                        title: 'Информация по Вашему номеру',
                        subTitle: 'Пополнение баланса, Тарифы, Услуги',
                        onTap: () =>
                            Navigator.push(context, CupertinoPageRoute(builder: (context) => const StartScreen())),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
