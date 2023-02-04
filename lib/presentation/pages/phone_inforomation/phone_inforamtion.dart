import 'package:beeline_assistant/presentation/widgets/black_button.dart';
import 'package:beeline_assistant/presentation/widgets/main_menu_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'my_phone_service_info_screen.dart';

class PhoneInformationScreen extends StatefulWidget {
  const PhoneInformationScreen({Key? key}) : super(key: key);

  @override
  _PhoneInformationScreenState createState() => _PhoneInformationScreenState();
}

class _PhoneInformationScreenState extends State<PhoneInformationScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Expanded(
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
                    maxWidth: 730
                ),
                child: Wrap(
                  spacing: 33.0,
                  runSpacing: 33.0,
                  children: [

                    Container(
                      constraints: const BoxConstraints(
                        maxWidth: 370,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [

                          const Text(
                            'Ваш баланс:',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w600
                            ),
                          ),

                          RichText(
                            textAlign: TextAlign.center,
                            text: const TextSpan(
                                children: [

                                  TextSpan(
                                      text: '80.48',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 64,
                                          fontWeight: FontWeight.w700
                                      )
                                  ),
                                  TextSpan(
                                      text: '  сом',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600
                                      )
                                  ),

                                ]
                            ),
                          ),

                          const SizedBox(height: 20),

                          MainMenuCard(
                            headerText: "Ваш тариф",
                            title: "Безлимит+",
                            subTitle: "980 cом / 4 недели",
                            onTap: () {},
                          ),

                          const SizedBox(height: 20),

                          MainMenuCard(
                            title: "Безлимит+",
                            onTap: () {},
                          ),

                          const SizedBox(height: 20),

                          Row(
                            children: [

                              Expanded(
                                child: BlackButton(
                                  title: 'Все услуги',
                                  onPressed: () {},
                                ),
                              ),

                              const SizedBox(width: 29),

                              Expanded(
                                child: BlackButton(
                                  title: 'Все тарифы',
                                  onPressed: () {},
                                ),
                              ),

                            ],
                          )

                        ],
                      ),
                    ),

                    Container(
                      constraints: const BoxConstraints(
                        maxWidth: 326,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [

                          Container(
                            decoration: BoxDecoration(

                            ),
                            child: Column(
                              children: [



                              ],
                            ),
                          ),


                          Row(
                            children: [
                              Expanded(
                                child: BlackButton(
                                  title: 'Все услуги',
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          )

                        ],
                      ),
                    )


                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
