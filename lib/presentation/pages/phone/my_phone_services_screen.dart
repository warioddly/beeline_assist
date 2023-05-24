import 'package:beeline_assistant/presentation/pages/phone/phone_service_info_screen_for_connected.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_appbar.dart';
import 'components/my_service_info_card.dart';
import 'phone_service_info_screen.dart';

class MyPhoneServicesScreen extends StatefulWidget {
  const MyPhoneServicesScreen({Key? key}) : super(key: key);

  @override
  _MyPhoneServicesScreenState createState() => _MyPhoneServicesScreenState();
}

class _MyPhoneServicesScreenState extends State<MyPhoneServicesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bibi.png'),
            fit: BoxFit.scaleDown,
            alignment: Alignment.bottomRight,
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    constraints: const BoxConstraints(maxWidth: 348),
                    child: Column(
                      children: [
                        MyServiceInfoCard(
                          title: 'YouTube + WhatsApp',
                          subTitle: "Безлимитный трафик на YouTube и WhatsApp",
                          price: "120 сом / за 4 недели",
                          onTap: () => Navigator.of(context)
                              .push(CupertinoPageRoute(builder: (context) => const PhoneServiceInfoScreenForConnected())),
                        ),
                        const SizedBox(height: 13),
                        MyServiceInfoCard(
                          title: 'Ты где?',
                          subTitle: "Забота о близких - это просто",
                          price: "3 сом / сутки",
                          onTap: () => Navigator.of(context)
                              .push(CupertinoPageRoute(builder: (context) => const PhoneServiceInfoScreenForConnected())),
                        ),
                        const SizedBox(height: 13),
                        MyServiceInfoCard(
                          title: 'Beeline игры',
                          subTitle: "Играй сколько угодно!",
                          price: "от 15 до 240 сомов",
                          onTap: () => Navigator.of(context)
                              .push(CupertinoPageRoute(builder: (context) => const PhoneServiceInfoScreenForConnected())),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
