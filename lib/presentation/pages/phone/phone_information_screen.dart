import 'package:beeline_assistant/presentation/pages/rate/my_rate_screen.dart';
import 'package:beeline_assistant/presentation/widgets/yellow_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../widgets/custom_appbar.dart';
import '../home/components/main_menu_card.dart';
import '../rate/all_services_screen_.dart';
import '../rate/all_tariffs_screen.dart';
import 'my_phone_services_screen.dart';

class PhoneInformationScreen extends StatefulWidget {
  const PhoneInformationScreen({Key? key}) : super(key: key);

  @override
  _PhoneInformationScreenState createState() => _PhoneInformationScreenState();
}

class _PhoneInformationScreenState extends State<PhoneInformationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        logout: true,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        color: Colors.black,
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                constraints: const BoxConstraints(maxWidth: 730),
                child: Wrap(
                  spacing: 20.0,
                  runSpacing: 20.0,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  children: [

                    Container(
                      constraints: const BoxConstraints(
                        maxWidth: 370,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [

                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(29),
                              color: const Color.fromRGBO(35, 35, 37, 1)
                            ),
                            child: Row(
                              children: [

                                Container(
                                  width: 70,  // width of the container
                                  height: 70,  // height of the container
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/images/logo/beeline.png'),
                                      fit: BoxFit.cover,  // fills the entire container
                                      alignment: Alignment.bottomRight,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 12),

                                Flexible(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: const [

                                         Text(
                                          '80.48',
                                          style: TextStyle(color: Colors.white, fontSize: 64, fontWeight: FontWeight.w700)),

                                         Text(
                                          "На вашем номере",
                                          style: TextStyle(
                                              color: Color.fromRGBO(148, 152, 179, 1),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              overflow: TextOverflow.ellipsis
                                          ),
                                        ),

                                      ],
                                    ),
                                )

                              ],
                            ),
                          ),

                          const SizedBox(height: 40),

                          Material(
                            color: const Color.fromRGBO(35, 35, 37, 1),
                            borderRadius: BorderRadius.circular(29),
                            child: InkWell(
                              overlayColor: const MaterialStatePropertyAll(Colors.white24),
                              onTap: () => Navigator.push( context, CupertinoPageRoute(builder: (context) => const MyRateScreen())),
                              borderRadius: BorderRadius.circular(29),
                              child: Container(
                                width: double.infinity,
                                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(29)),
                                child: Row(
                                  children: [

                                    const SizedBox(width: 16),

                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [

                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: const [

                                                Text(
                                                  "Ваш тариф",
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(255, 159, 0, 1),
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w700,
                                                      overflow: TextOverflow.ellipsis
                                                  ),
                                                ),

                                              Text(
                                                "Безлимит+",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 32,
                                                    fontWeight: FontWeight.w400,
                                                    overflow: TextOverflow.ellipsis
                                                ),
                                              ),


                                              SizedBox(height: 3),


                                               Text(
                                                  "980 cом / 4 недели",
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(148, 152, 179, 1),
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w400,
                                                      overflow: TextOverflow.ellipsis),
                                                ),


                                            ],
                                          ),

                                          SvgPicture.asset( 'assets/images/icons/arrow_right.svg', semanticsLabel: 'A red up arrow', color: Colors.white )

                                        ],
                                      ),
                                    )

                                  ],
                                ),
                              ),
                            ),
                          ),

                          const SizedBox(height: 40),

                          MenuCard(
                            title: "Ваши услуги (3)",
                            onTap: () => Navigator.of(context)
                                .push(CupertinoPageRoute(builder: (context) => const MyPhoneServicesScreen())),
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                          ),

                          const SizedBox(height: 40),

                          Row(
                            children: [
                              Expanded(
                                child: YellowButton(
                                  title: 'Все услуги',
                                  onPressed: () => Navigator.of(context)
                                      .push(CupertinoPageRoute(builder: (context) => const AllServicesScreen())),
                                ),
                              ),
                              const SizedBox(width: 29),
                              Expanded(
                                child: YellowButton(
                                  title: 'Все тарифы',
                                  onPressed: () => Navigator.of(context)
                                      .push(CupertinoPageRoute(builder: (context) => const AllTariffsScreen())),
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
                            decoration: BoxDecoration(color: const Color.fromRGBO(31, 31, 31, 1), borderRadius: BorderRadius.circular(29)),
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
                                  designColor: Colors.yellow,
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
                                  designColor: Colors.yellow,
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
                                  designColor: Colors.yellow,
                                ),
                                const SizedBox(height: 4),

                                const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 16),
                                  child: Text(
                                    'C 09.01.2023 по 09.02.2023',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 148, 255, 1), fontWeight: FontWeight.w400, fontSize: 12),
                                  )
                                )

                              ],
                            ),
                          ),
                        ],
                      ),
                    )

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getInformationCardItem({
    required String header,
    Color designColor = Colors.yellow,
    String? subtitle,
    String? amount,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 13),
      child: Row(
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
                    decoration: BoxDecoration(color: designColor, borderRadius: BorderRadius.circular(50)),
                  ),
                  Text(
                    header,
                    style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
                  )
                ],
              ),
              SizedBox(height: subtitle != null ? 4 : 0),
              subtitle != null
                  ? Text(
                subtitle,
                style: const TextStyle(color: Color.fromRGBO(144, 144, 144, 1), fontSize: 12, fontWeight: FontWeight.w400),
              )
                  : const SizedBox(),
            ],
          ),
          amount != null
              ? Text(
            amount,
            style: const TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w600),
          )
              : const SizedBox(),
        ],
      ),
    );
  }
}
