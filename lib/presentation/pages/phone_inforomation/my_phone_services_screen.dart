import 'package:beeline_assistant/presentation/widgets/black_button.dart';
import 'package:beeline_assistant/presentation/widgets/main_menu_card.dart';
import 'package:flutter/material.dart';

class MyPhoneServicesScreen extends StatefulWidget {
  const MyPhoneServicesScreen({Key? key}) : super(key: key);

  @override
  _MyPhoneServicesScreenState createState() => _MyPhoneServicesScreenState();
}

class _MyPhoneServicesScreenState extends State<MyPhoneServicesScreen> {

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

                          const SizedBox(height: 24),

                          MainMenuCard(
                            headerText: "Ваш тариф",
                            title: "Безлимит+",
                            subTitle: "980 cом / 4 недели",
                            onTap: () {},
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
                          ),

                          const SizedBox(height: 20),

                          MainMenuCard(
                            title: "Ваши услуги (3)",
                            onTap: () {},
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
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
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12)
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 16),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [

                                getInformationCardItem(
                                  header: 'Абонентская плата',
                                  subtitle: 'За тариф и услуги',
                                  amount: '-115 сом',
                                  designColor: Colors.yellow,
                                ),

                                Container(
                                  height: 1,
                                  margin: const EdgeInsets.symmetric(vertical: 4),
                                  color: const Color.fromRGBO(144, 144, 144, 1),
                                ),

                                getInformationCardItem(
                                  header: 'Звонки',
                                  subtitle: '7 исходящих звонок',
                                  amount: '-40.56 сом',
                                  designColor: Colors.green,
                                ),

                                Container(
                                  height: 1,
                                  margin: const EdgeInsets.symmetric(vertical: 4),
                                  color: const Color.fromRGBO(144, 144, 144, 1),
                                ),


                                getInformationCardItem(
                                  header: 'Сообщение',
                                  subtitle: '3 сообщения',
                                  amount: '-22 сом',
                                  designColor: Colors.yellow,
                                ),

                                Container(
                                  height: 1,
                                  margin: const EdgeInsets.symmetric(vertical: 4),
                                  color: const Color.fromRGBO(144, 144, 144, 1),
                                ),


                                getInformationCardItem(
                                  header: 'Интернет',
                                  subtitle: '12 ГБ',
                                  amount: '-22 сом',
                                  designColor: Colors.cyanAccent,
                                ),

                                Container(
                                  height: 1,
                                  margin: const EdgeInsets.symmetric(vertical: 4),
                                  color: const Color.fromRGBO(144, 144, 144, 1),
                                ),


                                getInformationCardItem(
                                  header: 'Другие списания',
                                  subtitle: '3 пакета',
                                  amount: '-7.89 сом',
                                  designColor: Colors.redAccent,
                                ),

                                const SizedBox(height: 4),

                                const Text(
                                  'C 09.01.2023 по 09.02.2023',
                                  style: TextStyle(
                                    color: Color.fromRGBO(0, 148, 255, 1),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12
                                  ),
                                )

                              ],
                            ),
                          ),

                          const SizedBox(height: 21),

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


  Widget getInformationCardItem({ required String header, Color designColor = Colors.yellow, String? subtitle, String? amount, }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Row(
              children: [
                Container(
                  width: 11,
                  height: 11,
                  margin: const EdgeInsets.only(right: 4),
                  decoration: BoxDecoration(
                      color: designColor,
                      borderRadius: BorderRadius.circular(50)
                  ),
                ),
                Text(
                  header,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600
                  ),
                )
              ],
            ),

            SizedBox(height: subtitle != null ? 4 : 0),

            subtitle != null ?
            Text(
              subtitle,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w400
              ),
            ) : const SizedBox(),

          ],
        ),

        amount != null ? Text(
              amount,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.w600
              ),
            ) : const SizedBox(),

      ],
    );

  }


}
