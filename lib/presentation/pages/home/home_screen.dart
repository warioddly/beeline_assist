import 'package:beeline_assistant/presentation/pages/home/start_screen.dart';
import 'package:beeline_assistant/presentation/pages/rate/all_services_screen_.dart';
import 'package:beeline_assistant/presentation/pages/rate/all_tariffs_screen.dart';
import 'package:beeline_assistant/presentation/widgets/custom_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../auth/sign_up_screen.dart';
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
      appBar: const CustomAppbar( logout: true, leading: false ),
      extendBodyBehindAppBar: true,
      body: Container(
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
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Center(
                  child: Container(
                    constraints: const BoxConstraints(maxWidth: 498),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [


                        Column(
                          children: const [

                            Text(
                              "Здравствуйте!",
                              style: TextStyle(
                                  fontSize: 43,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white
                              ),
                            ),

                            Text(
                              "Я помощник Bibi. Я помогу Вам:",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white
                              ),
                            ),


                            SizedBox(height: 48),

                          ],
                        ),


                        MenuCard(
                          title: 'Исследуйте свой номер',
                          subTitle: 'Получите полную детализацию по вашему номеру',
                          icon: Icons.phone,
                          onTap: () => Navigator.push(
                              context, CupertinoPageRoute(builder: (context) => const SignUpScreen())),
                        ),

                        const SizedBox(height: 20),

                        MenuCard(
                          title: 'Откройте мир тарифов',
                          subTitle: 'Просмотрите все доступные тарифы для выбора',
                          icon: Icons.sim_card,
                          onTap: () =>
                              Navigator.push(context, CupertinoPageRoute(builder: (context) => const AllTariffsScreen())),
                        ),

                        const SizedBox(height: 20),

                        MenuCard(
                          title: 'Обзор выгодных услуг',
                          subTitle: 'Ознакомьтесь с уникальными услугами для вас',
                          icon: Icons.account_balance_wallet,
                          onTap: () => Navigator.push(
                              context, CupertinoPageRoute(builder: (context) => const AllServicesScreen())),
                        ),

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
