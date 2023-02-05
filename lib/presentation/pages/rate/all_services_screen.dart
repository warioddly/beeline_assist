import 'package:beeline_assistant/presentation/widgets/carousel_button.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_appbar.dart';
import '../phone/phone_service_info_screen.dart';
import 'components/service_carousel_card.dart';

class AllServicesScreen extends StatefulWidget {
  const AllServicesScreen({Key? key}) : super(key: key);

  @override
  _AllServicesScreenState createState() => _AllServicesScreenState();
}

class _AllServicesScreenState extends State<AllServicesScreen> {
  final PageController parentPageController = PageController(initialPage: 0, viewportFraction: 1, keepPage: true);

  int currentPage = 0;

  final Map<String, PageController> pageControllers = {
    for (int index = 0; index < 4; index++)
      "controller_$index": PageController(initialPage: 0, viewportFraction: 1, keepPage: true),
  };

  @override
  void initState() {
    super.initState();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        title: "Все Услуги",
        titleColor: Colors.white,
        leadingColor: Color.fromRGBO(255, 159, 0, 1),
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromRGBO(35, 35, 37, 1), Color.fromRGBO(45, 45, 45, 1)],
          ),
        ),
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.only(top: 54),
        child: Scrollbar(
          child: SingleChildScrollView(
            primary: true,
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 22),
                  Center(
                    child: Container(
                      constraints: const BoxConstraints(maxWidth: 1017),
                      child: Row(
                        children: [
                          Expanded(
                            child: CarouselButton(
                              title: 'Интернет',
                              disabled: currentPage != 0,
                              onPressed: () => changeParentPage(page: 0),
                            ),
                          ),
                          const SizedBox(width: 61),
                          Expanded(
                            child: CarouselButton(
                                title: 'Звонки',
                                disabled: currentPage != 1,
                                onPressed: () => changeParentPage(page: 1)),
                          ),
                          const SizedBox(width: 61),
                          Expanded(
                            flex: 2,
                            child: CarouselButton(
                                title: 'Развлечения',
                                disabled: currentPage != 2,
                                onPressed: () => changeParentPage(page: 2)),
                          ),
                          const SizedBox(width: 61),
                          Expanded(
                            child: CarouselButton(
                                title: 'Роуминг',
                                disabled: currentPage != 3,
                                onPressed: () => changeParentPage(page: 3)),
                          ),
                          const SizedBox(width: 61),
                          Expanded(
                            child: CarouselButton(
                                title: 'Другие',
                                disabled: currentPage != 4,
                                onPressed: () => changeParentPage(page: 4)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 22),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      constraints: const BoxConstraints(maxWidth: 1048),
                      margin: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: ExpandablePageView(
                              controller: parentPageController,
                              animationDuration: const Duration(milliseconds: 600),
                              physics: const BouncingScrollPhysics(),
                              onPageChanged: (int page) {
                                currentPage = page;

                                if (mounted) {
                                  setState(() {});
                                }
                              },
                              children: [
                                Wrap(
                                  spacing: 15.0,
                                  runSpacing: 15.0,
                                  alignment: WrapAlignment.center,
                                  children: [
                                    ServiceCarouselCard(
                                      title: 'YouTube + WhatsApp',
                                      subTitle: RichText(
                                        text: const TextSpan(children: [
                                          TextSpan(
                                            text: '690 сом',
                                            style: TextStyle(
                                                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
                                          ),
                                          TextSpan(
                                            text: ' / за 4 недели',
                                            style: TextStyle(
                                                color: Color.fromRGBO(148, 152, 179, 1),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14),
                                          ),
                                        ]),
                                      ),
                                      description: 'Безлимитный трафик на YouTube и WhatsApp',
                                      onTap: () => Navigator.of(context).push(
                                          CupertinoPageRoute(builder: (context) => const PhoneServiceInfoScreen())),
                                    ),
                                    ServiceCarouselCard(
                                      title: 'TikTok + WhatsApp',
                                      subTitle: RichText(
                                        text: const TextSpan(children: [
                                          TextSpan(
                                            text: '90 сом',
                                            style: TextStyle(
                                                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
                                          ),
                                          TextSpan(
                                            text: ' / за 4 недели',
                                            style: TextStyle(
                                                color: Color.fromRGBO(148, 152, 179, 1),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14),
                                          ),
                                        ]),
                                      ),
                                      description: "Подключите выгодный интернет пакет на 4 недели или на неделю!",
                                      onTap: () => Navigator.of(context).push(
                                          CupertinoPageRoute(builder: (context) => const PhoneServiceInfoScreen())),
                                    ),
                                    ServiceCarouselCard(
                                      subTitle: RichText(
                                        text: const TextSpan(children: [
                                          TextSpan(
                                            text: '690 сом',
                                            style: TextStyle(
                                                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
                                          ),
                                          TextSpan(
                                            text: ' / за 4 недели',
                                            style: TextStyle(
                                                color: Color.fromRGBO(148, 152, 179, 1),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14),
                                          ),
                                        ]),
                                      ),
                                      title: 'Бирге для интернета PRO + ИВИ',
                                      onTap: () => Navigator.of(context).push(
                                          CupertinoPageRoute(builder: (context) => const PhoneServiceInfoScreen())),
                                    ),
                                    ServiceCarouselCard(
                                      title: 'Instagram + WhatsApp',
                                      subTitle: RichText(
                                        text: const TextSpan(children: [
                                          TextSpan(
                                            text: '60 сом',
                                            style: TextStyle(
                                                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
                                          ),
                                          TextSpan(
                                            text: ' / за 4 недели',
                                            style: TextStyle(
                                                color: Color.fromRGBO(148, 152, 179, 1),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14),
                                          ),
                                        ]),
                                      ),
                                      description: 'Безлимитный трафик на YouTube и WhatsApp',
                                      onTap: () => Navigator.of(context).push(
                                          CupertinoPageRoute(builder: (context) => const PhoneServiceInfoScreen())),
                                    ),
                                    ServiceCarouselCard(
                                      title: 'Бирге для интернета PRO + ИВИ',
                                      subTitle: RichText(
                                        text: const TextSpan(children: [
                                          TextSpan(
                                            text: '690 сом',
                                            style: TextStyle(
                                                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
                                          ),
                                          TextSpan(
                                            text: ' / за 4 недели',
                                            style: TextStyle(
                                                color: Color.fromRGBO(148, 152, 179, 1),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14),
                                          ),
                                        ]),
                                      ),
                                      onTap: () => Navigator.of(context).push(
                                          CupertinoPageRoute(builder: (context) => const PhoneServiceInfoScreen())),
                                    ),
                                    ServiceCarouselCard(
                                      title: 'Бирге для интернета PRO + ИВИ',
                                      subTitle: RichText(
                                        text: const TextSpan(children: [
                                          TextSpan(
                                            text: '220 сом',
                                            style: TextStyle(
                                                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
                                          ),
                                          TextSpan(
                                            text: ' / за 4 недели',
                                            style: TextStyle(
                                                color: Color.fromRGBO(148, 152, 179, 1),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14),
                                          ),
                                        ]),
                                      ),
                                      descriptionTitle: 'Закончился интернет?',
                                      description: "Подключите выгодный интернет пакет на 4 недели или на неделю!",
                                      onTap: () => Navigator.of(context).push(
                                          CupertinoPageRoute(builder: (context) => const PhoneServiceInfoScreen())),
                                    ),
                                    ServiceCarouselCard(
                                      title: 'Бирге для интернета PRO + ИВИ',
                                      subTitle: RichText(
                                        text: const TextSpan(children: [
                                          TextSpan(
                                            text: '60 сом',
                                            style: TextStyle(
                                                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
                                          ),
                                          TextSpan(
                                            text: ' / за 4 недели',
                                            style: TextStyle(
                                                color: Color.fromRGBO(148, 152, 179, 1),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14),
                                          ),
                                        ]),
                                      ),
                                      description: "Подключите выгодный интернет пакет на 4 недели или на неделю!",
                                      onTap: () => Navigator.of(context).push(
                                          CupertinoPageRoute(builder: (context) => const PhoneServiceInfoScreen())),
                                    ),
                                    ServiceCarouselCard(
                                      title: 'Бирге для интернета PRO + ИВИ',
                                      subTitle: RichText(
                                        text: const TextSpan(children: [
                                          TextSpan(
                                            text: '690 сом',
                                            style: TextStyle(
                                                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
                                          ),
                                          TextSpan(
                                            text: ' / за 4 недели',
                                            style: TextStyle(
                                                color: Color.fromRGBO(148, 152, 179, 1),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14),
                                          ),
                                        ]),
                                      ),
                                      descriptionTitle: 'Закончился интернет?',
                                      description: "Подключите выгодный интернет пакет на 4 недели или на неделю!",
                                      onTap: () => Navigator.of(context).push(
                                          CupertinoPageRoute(builder: (context) => const PhoneServiceInfoScreen())),
                                    ),
                                    ServiceCarouselCard(
                                      title: 'Бирге для интернета PRO + ИВИ',
                                      subTitle: RichText(
                                        text: const TextSpan(children: [
                                          TextSpan(
                                            text: '690 сом',
                                            style: TextStyle(
                                                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
                                          ),
                                          TextSpan(
                                            text: ' / за 4 недели',
                                            style: TextStyle(
                                                color: Color.fromRGBO(148, 152, 179, 1),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14),
                                          ),
                                        ]),
                                      ),
                                      onTap: () => Navigator.of(context).push(
                                          CupertinoPageRoute(builder: (context) => const PhoneServiceInfoScreen())),
                                    ),
                                    ServiceCarouselCard(
                                      title: 'Бирге для интернета PRO + ИВИ',
                                      subTitle: RichText(
                                        text: const TextSpan(children: [
                                          TextSpan(
                                            text: '690 сом',
                                            style: TextStyle(
                                                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
                                          ),
                                          TextSpan(
                                            text: ' / за 4 недели',
                                            style: TextStyle(
                                                color: Color.fromRGBO(148, 152, 179, 1),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14),
                                          ),
                                        ]),
                                      ),
                                      descriptionTitle: 'Закончился интернет?',
                                      description: "Подключите выгодный интернет пакет на 4 недели или на неделю!",
                                      onTap: () => Navigator.of(context).push(
                                          CupertinoPageRoute(builder: (context) => const PhoneServiceInfoScreen())),
                                    ),
                                    ServiceCarouselCard(
                                      title: 'Instagram + WhatsApp',
                                      subTitle: RichText(
                                        text: const TextSpan(children: [
                                          TextSpan(
                                            text: '60 сом',
                                            style: TextStyle(
                                                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
                                          ),
                                          TextSpan(
                                            text: ' / за 4 недели',
                                            style: TextStyle(
                                                color: Color.fromRGBO(148, 152, 179, 1),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14),
                                          ),
                                        ]),
                                      ),
                                      description: 'Безлимитный трафик на YouTube и WhatsApp',
                                      onTap: () => Navigator.of(context).push(
                                          CupertinoPageRoute(builder: (context) => const PhoneServiceInfoScreen())),
                                    ),
                                    ServiceCarouselCard(
                                      title: 'Бирге для интернета PRO + ИВИ',
                                      subTitle: RichText(
                                        text: const TextSpan(children: [
                                          TextSpan(
                                            text: '690 сом',
                                            style: TextStyle(
                                                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
                                          ),
                                          TextSpan(
                                            text: ' / за 4 недели',
                                            style: TextStyle(
                                                color: Color.fromRGBO(148, 152, 179, 1),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14),
                                          ),
                                        ]),
                                      ),
                                      onTap: () => Navigator.of(context).push(
                                          CupertinoPageRoute(builder: (context) => const PhoneServiceInfoScreen())),
                                    ),
                                  ],
                                ),
                                Wrap(
                                  spacing: 15.0,
                                  runSpacing: 15.0,
                                  alignment: WrapAlignment.center,
                                  children: [
                                    ServiceCarouselCard(
                                      title: 'YouTube + WhatsApp',
                                      subTitle: RichText(
                                        text: const TextSpan(children: [
                                          TextSpan(
                                            text: '690 сом',
                                            style: TextStyle(
                                                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
                                          ),
                                          TextSpan(
                                            text: ' / за 4 недели',
                                            style: TextStyle(
                                                color: Color.fromRGBO(148, 152, 179, 1),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14),
                                          ),
                                        ]),
                                      ),
                                      description: 'Безлимитный трафик на YouTube и WhatsApp',
                                      onTap: () => Navigator.of(context).push(
                                          CupertinoPageRoute(builder: (context) => const PhoneServiceInfoScreen())),
                                    ),
                                    ServiceCarouselCard(
                                      title: 'TikTok + WhatsApp',
                                      subTitle: RichText(
                                        text: const TextSpan(children: [
                                          TextSpan(
                                            text: '90 сом',
                                            style: TextStyle(
                                                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
                                          ),
                                          TextSpan(
                                            text: ' / за 4 недели',
                                            style: TextStyle(
                                                color: Color.fromRGBO(148, 152, 179, 1),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14),
                                          ),
                                        ]),
                                      ),
                                      description: "Подключите выгодный интернет пакет на 4 недели или на неделю!",
                                      onTap: () => Navigator.of(context).push(
                                          CupertinoPageRoute(builder: (context) => const PhoneServiceInfoScreen())),
                                    ),
                                    ServiceCarouselCard(
                                      subTitle: RichText(
                                        text: const TextSpan(children: [
                                          TextSpan(
                                            text: '690 сом',
                                            style: TextStyle(
                                                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
                                          ),
                                          TextSpan(
                                            text: ' / за 4 недели',
                                            style: TextStyle(
                                                color: Color.fromRGBO(148, 152, 179, 1),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14),
                                          ),
                                        ]),
                                      ),
                                      title: 'Бирге для интернета PRO + ИВИ',
                                      onTap: () => Navigator.of(context).push(
                                          CupertinoPageRoute(builder: (context) => const PhoneServiceInfoScreen())),
                                    ),
                                    ServiceCarouselCard(
                                      title: 'Instagram + WhatsApp',
                                      subTitle: RichText(
                                        text: const TextSpan(children: [
                                          TextSpan(
                                            text: '60 сом',
                                            style: TextStyle(
                                                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
                                          ),
                                          TextSpan(
                                            text: ' / за 4 недели',
                                            style: TextStyle(
                                                color: Color.fromRGBO(148, 152, 179, 1),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14),
                                          ),
                                        ]),
                                      ),
                                      description: 'Безлимитный трафик на YouTube и WhatsApp',
                                      onTap: () => Navigator.of(context).push(
                                          CupertinoPageRoute(builder: (context) => const PhoneServiceInfoScreen())),
                                    ),
                                    ServiceCarouselCard(
                                      title: 'Бирге для интернета PRO + ИВИ',
                                      subTitle: RichText(
                                        text: const TextSpan(children: [
                                          TextSpan(
                                            text: '690 сом',
                                            style: TextStyle(
                                                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
                                          ),
                                          TextSpan(
                                            text: ' / за 4 недели',
                                            style: TextStyle(
                                                color: Color.fromRGBO(148, 152, 179, 1),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14),
                                          ),
                                        ]),
                                      ),
                                      descriptionTitle: 'Закончился интернет?',
                                      description: "Подключите выгодный интернет пакет на 4 недели или на неделю!",
                                      onTap: () => Navigator.of(context).push(
                                          CupertinoPageRoute(builder: (context) => const PhoneServiceInfoScreen())),
                                    ),
                                    ServiceCarouselCard(
                                      title: 'Instagram + WhatsApp',
                                      subTitle: RichText(
                                        text: const TextSpan(children: [
                                          TextSpan(
                                            text: '60 сом',
                                            style: TextStyle(
                                                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
                                          ),
                                          TextSpan(
                                            text: ' / за 4 недели',
                                            style: TextStyle(
                                                color: Color.fromRGBO(148, 152, 179, 1),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14),
                                          ),
                                        ]),
                                      ),
                                      description: 'Безлимитный трафик на YouTube и WhatsApp',
                                      onTap: () => Navigator.of(context).push(
                                          CupertinoPageRoute(builder: (context) => const PhoneServiceInfoScreen())),
                                    ),
                                    ServiceCarouselCard(
                                      title: 'Бирге для интернета PRO + ИВИ',
                                      subTitle: RichText(
                                        text: const TextSpan(children: [
                                          TextSpan(
                                            text: '690 сом',
                                            style: TextStyle(
                                                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
                                          ),
                                          TextSpan(
                                            text: ' / за 4 недели',
                                            style: TextStyle(
                                                color: Color.fromRGBO(148, 152, 179, 1),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14),
                                          ),
                                        ]),
                                      ),
                                      onTap: () => Navigator.of(context).push(
                                          CupertinoPageRoute(builder: (context) => const PhoneServiceInfoScreen())),
                                    ),
                                  ],
                                ),
                                Wrap(
                                  spacing: 15.0,
                                  runSpacing: 15.0,
                                  alignment: WrapAlignment.center,
                                  children: [
                                    ServiceCarouselCard(
                                      title: 'Бирге для интернета PRO + ИВИ',
                                      subTitle: RichText(
                                        text: const TextSpan(children: [
                                          TextSpan(
                                            text: '220 сом',
                                            style: TextStyle(
                                                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
                                          ),
                                          TextSpan(
                                            text: ' / за 4 недели',
                                            style: TextStyle(
                                                color: Color.fromRGBO(148, 152, 179, 1),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14),
                                          ),
                                        ]),
                                      ),
                                      descriptionTitle: 'Закончился интернет?',
                                      description: "Подключите выгодный интернет пакет на 4 недели или на неделю!",
                                      onTap: () => Navigator.of(context).push(
                                          CupertinoPageRoute(builder: (context) => const PhoneServiceInfoScreen())),
                                    ),
                                    ServiceCarouselCard(
                                      title: 'Бирге для интернета PRO + ИВИ',
                                      subTitle: RichText(
                                        text: const TextSpan(children: [
                                          TextSpan(
                                            text: '60 сом',
                                            style: TextStyle(
                                                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
                                          ),
                                          TextSpan(
                                            text: ' / за 4 недели',
                                            style: TextStyle(
                                                color: Color.fromRGBO(148, 152, 179, 1),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14),
                                          ),
                                        ]),
                                      ),
                                      description: "Подключите выгодный интернет пакет на 4 недели или на неделю!",
                                      onTap: () => Navigator.of(context).push(
                                          CupertinoPageRoute(builder: (context) => const PhoneServiceInfoScreen())),
                                    ),
                                    ServiceCarouselCard(
                                      title: 'Бирге для интернета PRO + ИВИ',
                                      subTitle: RichText(
                                        text: const TextSpan(children: [
                                          TextSpan(
                                            text: '690 сом',
                                            style: TextStyle(
                                                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
                                          ),
                                          TextSpan(
                                            text: ' / за 4 недели',
                                            style: TextStyle(
                                                color: Color.fromRGBO(148, 152, 179, 1),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14),
                                          ),
                                        ]),
                                      ),
                                      descriptionTitle: 'Закончился интернет?',
                                      description: "Подключите выгодный интернет пакет на 4 недели или на неделю!",
                                      onTap: () => Navigator.of(context).push(
                                          CupertinoPageRoute(builder: (context) => const PhoneServiceInfoScreen())),
                                    ),
                                    ServiceCarouselCard(
                                      title: 'Бирге для интернета PRO + ИВИ',
                                      subTitle: RichText(
                                        text: const TextSpan(children: [
                                          TextSpan(
                                            text: '690 сом',
                                            style: TextStyle(
                                                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
                                          ),
                                          TextSpan(
                                            text: ' / за 4 недели',
                                            style: TextStyle(
                                                color: Color.fromRGBO(148, 152, 179, 1),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14),
                                          ),
                                        ]),
                                      ),
                                      onTap: () => Navigator.of(context).push(
                                          CupertinoPageRoute(builder: (context) => const PhoneServiceInfoScreen())),
                                    ),
                                    ServiceCarouselCard(
                                      title: 'Бирге для интернета PRO + ИВИ',
                                      subTitle: RichText(
                                        text: const TextSpan(children: [
                                          TextSpan(
                                            text: '690 сом',
                                            style: TextStyle(
                                                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
                                          ),
                                          TextSpan(
                                            text: ' / за 4 недели',
                                            style: TextStyle(
                                                color: Color.fromRGBO(148, 152, 179, 1),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14),
                                          ),
                                        ]),
                                      ),
                                      descriptionTitle: 'Закончился интернет?',
                                      description: "Подключите выгодный интернет пакет на 4 недели или на неделю!",
                                      onTap: () => Navigator.of(context).push(
                                          CupertinoPageRoute(builder: (context) => const PhoneServiceInfoScreen())),
                                    ),
                                    ServiceCarouselCard(
                                      title: 'Instagram + WhatsApp',
                                      subTitle: RichText(
                                        text: const TextSpan(children: [
                                          TextSpan(
                                            text: '60 сом',
                                            style: TextStyle(
                                                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
                                          ),
                                          TextSpan(
                                            text: ' / за 4 недели',
                                            style: TextStyle(
                                                color: Color.fromRGBO(148, 152, 179, 1),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14),
                                          ),
                                        ]),
                                      ),
                                      description: 'Безлимитный трафик на YouTube и WhatsApp',
                                      onTap: () => Navigator.of(context).push(
                                          CupertinoPageRoute(builder: (context) => const PhoneServiceInfoScreen())),
                                    ),
                                    ServiceCarouselCard(
                                      title: 'Бирге для интернета PRO + ИВИ',
                                      subTitle: RichText(
                                        text: const TextSpan(children: [
                                          TextSpan(
                                            text: '690 сом',
                                            style: TextStyle(
                                                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
                                          ),
                                          TextSpan(
                                            text: ' / за 4 недели',
                                            style: TextStyle(
                                                color: Color.fromRGBO(148, 152, 179, 1),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14),
                                          ),
                                        ]),
                                      ),
                                      onTap: () => Navigator.of(context).push(
                                          CupertinoPageRoute(builder: (context) => const PhoneServiceInfoScreen())),
                                    ),
                                  ],
                                ),
                                Wrap(
                                  spacing: 15.0,
                                  runSpacing: 15.0,
                                  alignment: WrapAlignment.center,
                                  children: [
                                    ServiceCarouselCard(
                                      title: 'YouTube + WhatsApp',
                                      subTitle: RichText(
                                        text: const TextSpan(children: [
                                          TextSpan(
                                            text: '690 сом',
                                            style: TextStyle(
                                                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
                                          ),
                                          TextSpan(
                                            text: ' / за 4 недели',
                                            style: TextStyle(
                                                color: Color.fromRGBO(148, 152, 179, 1),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14),
                                          ),
                                        ]),
                                      ),
                                      description: 'Безлимитный трафик на YouTube и WhatsApp',
                                      onTap: () => Navigator.of(context).push(
                                          CupertinoPageRoute(builder: (context) => const PhoneServiceInfoScreen())),
                                    ),
                                    ServiceCarouselCard(
                                      title: 'TikTok + WhatsApp',
                                      subTitle: RichText(
                                        text: const TextSpan(children: [
                                          TextSpan(
                                            text: '90 сом',
                                            style: TextStyle(
                                                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
                                          ),
                                          TextSpan(
                                            text: ' / за 4 недели',
                                            style: TextStyle(
                                                color: Color.fromRGBO(148, 152, 179, 1),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14),
                                          ),
                                        ]),
                                      ),
                                      description: "Подключите выгодный интернет пакет на 4 недели или на неделю!",
                                      onTap: () => Navigator.of(context).push(
                                          CupertinoPageRoute(builder: (context) => const PhoneServiceInfoScreen())),
                                    ),
                                    ServiceCarouselCard(
                                      subTitle: RichText(
                                        text: const TextSpan(children: [
                                          TextSpan(
                                            text: '690 сом',
                                            style: TextStyle(
                                                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
                                          ),
                                          TextSpan(
                                            text: ' / за 4 недели',
                                            style: TextStyle(
                                                color: Color.fromRGBO(148, 152, 179, 1),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14),
                                          ),
                                        ]),
                                      ),
                                      title: 'Бирге для интернета PRO + ИВИ',
                                      onTap: () => Navigator.of(context).push(
                                          CupertinoPageRoute(builder: (context) => const PhoneServiceInfoScreen())),
                                    ),
                                    ServiceCarouselCard(
                                      title: 'Instagram + WhatsApp',
                                      subTitle: RichText(
                                        text: const TextSpan(children: [
                                          TextSpan(
                                            text: '60 сом',
                                            style: TextStyle(
                                                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
                                          ),
                                          TextSpan(
                                            text: ' / за 4 недели',
                                            style: TextStyle(
                                                color: Color.fromRGBO(148, 152, 179, 1),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14),
                                          ),
                                        ]),
                                      ),
                                      description: 'Безлимитный трафик на YouTube и WhatsApp',
                                      onTap: () => Navigator.of(context).push(
                                          CupertinoPageRoute(builder: (context) => const PhoneServiceInfoScreen())),
                                    ),
                                    ServiceCarouselCard(
                                      title: 'Бирге для интернета PRO + ИВИ',
                                      subTitle: RichText(
                                        text: const TextSpan(children: [
                                          TextSpan(
                                            text: '690 сом',
                                            style: TextStyle(
                                                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
                                          ),
                                          TextSpan(
                                            text: ' / за 4 недели',
                                            style: TextStyle(
                                                color: Color.fromRGBO(148, 152, 179, 1),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14),
                                          ),
                                        ]),
                                      ),
                                      onTap: () => Navigator.of(context).push(
                                          CupertinoPageRoute(builder: (context) => const PhoneServiceInfoScreen())),
                                    ),
                                    ServiceCarouselCard(
                                      title: 'Бирге для интернета PRO + ИВИ',
                                      subTitle: RichText(
                                        text: const TextSpan(children: [
                                          TextSpan(
                                            text: '220 сом',
                                            style: TextStyle(
                                                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
                                          ),
                                          TextSpan(
                                            text: ' / за 4 недели',
                                            style: TextStyle(
                                                color: Color.fromRGBO(148, 152, 179, 1),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14),
                                          ),
                                        ]),
                                      ),
                                      descriptionTitle: 'Закончился интернет?',
                                      description: "Подключите выгодный интернет пакет на 4 недели или на неделю!",
                                      onTap: () => Navigator.of(context).push(
                                          CupertinoPageRoute(builder: (context) => const PhoneServiceInfoScreen())),
                                    ),
                                    ServiceCarouselCard(
                                      title: 'Бирге для интернета PRO + ИВИ',
                                      subTitle: RichText(
                                        text: const TextSpan(children: [
                                          TextSpan(
                                            text: '60 сом',
                                            style: TextStyle(
                                                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
                                          ),
                                          TextSpan(
                                            text: ' / за 4 недели',
                                            style: TextStyle(
                                                color: Color.fromRGBO(148, 152, 179, 1),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14),
                                          ),
                                        ]),
                                      ),
                                      description: "Подключите выгодный интернет пакет на 4 недели или на неделю!",
                                      onTap: () => Navigator.of(context).push(
                                          CupertinoPageRoute(builder: (context) => const PhoneServiceInfoScreen())),
                                    ),
                                    ServiceCarouselCard(
                                      title: 'Бирге для интернета PRO + ИВИ',
                                      subTitle: RichText(
                                        text: const TextSpan(children: [
                                          TextSpan(
                                            text: '690 сом',
                                            style: TextStyle(
                                                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
                                          ),
                                          TextSpan(
                                            text: ' / за 4 недели',
                                            style: TextStyle(
                                                color: Color.fromRGBO(148, 152, 179, 1),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14),
                                          ),
                                        ]),
                                      ),
                                      descriptionTitle: 'Закончился интернет?',
                                      description: "Подключите выгодный интернет пакет на 4 недели или на неделю!",
                                      onTap: () => Navigator.of(context).push(
                                          CupertinoPageRoute(builder: (context) => const PhoneServiceInfoScreen())),
                                    ),
                                    ServiceCarouselCard(
                                      title: 'Бирге для интернета PRO + ИВИ',
                                      subTitle: RichText(
                                        text: const TextSpan(children: [
                                          TextSpan(
                                            text: '690 сом',
                                            style: TextStyle(
                                                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
                                          ),
                                          TextSpan(
                                            text: ' / за 4 недели',
                                            style: TextStyle(
                                                color: Color.fromRGBO(148, 152, 179, 1),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14),
                                          ),
                                        ]),
                                      ),
                                      onTap: () => Navigator.of(context).push(
                                          CupertinoPageRoute(builder: (context) => const PhoneServiceInfoScreen())),
                                    ),
                                    ServiceCarouselCard(
                                      title: 'Бирге для интернета PRO + ИВИ',
                                      subTitle: RichText(
                                        text: const TextSpan(children: [
                                          TextSpan(
                                            text: '690 сом',
                                            style: TextStyle(
                                                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
                                          ),
                                          TextSpan(
                                            text: ' / за 4 недели',
                                            style: TextStyle(
                                                color: Color.fromRGBO(148, 152, 179, 1),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14),
                                          ),
                                        ]),
                                      ),
                                      descriptionTitle: 'Закончился интернет?',
                                      description: "Подключите выгодный интернет пакет на 4 недели или на неделю!",
                                      onTap: () => Navigator.of(context).push(
                                          CupertinoPageRoute(builder: (context) => const PhoneServiceInfoScreen())),
                                    ),
                                    ServiceCarouselCard(
                                      title: 'Instagram + WhatsApp',
                                      subTitle: RichText(
                                        text: const TextSpan(children: [
                                          TextSpan(
                                            text: '60 сом',
                                            style: TextStyle(
                                                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
                                          ),
                                          TextSpan(
                                            text: ' / за 4 недели',
                                            style: TextStyle(
                                                color: Color.fromRGBO(148, 152, 179, 1),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14),
                                          ),
                                        ]),
                                      ),
                                      description: 'Безлимитный трафик на YouTube и WhatsApp',
                                      onTap: () => Navigator.of(context).push(
                                          CupertinoPageRoute(builder: (context) => const PhoneServiceInfoScreen())),
                                    ),
                                    ServiceCarouselCard(
                                      title: 'Бирге для интернета PRO + ИВИ',
                                      subTitle: RichText(
                                        text: const TextSpan(children: [
                                          TextSpan(
                                            text: '690 сом',
                                            style: TextStyle(
                                                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
                                          ),
                                          TextSpan(
                                            text: ' / за 4 недели',
                                            style: TextStyle(
                                                color: Color.fromRGBO(148, 152, 179, 1),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14),
                                          ),
                                        ]),
                                      ),
                                      onTap: () => Navigator.of(context).push(
                                          CupertinoPageRoute(builder: (context) => const PhoneServiceInfoScreen())),
                                    ),
                                  ],
                                ),
                                Wrap(
                                  spacing: 15.0,
                                  runSpacing: 15.0,
                                  alignment: WrapAlignment.center,
                                  children: [
                                    ServiceCarouselCard(
                                      title: 'Бирге для интернета PRO + ИВИ',
                                      subTitle: RichText(
                                        text: const TextSpan(children: [
                                          TextSpan(
                                            text: '690 сом',
                                            style: TextStyle(
                                                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
                                          ),
                                          TextSpan(
                                            text: ' / за 4 недели',
                                            style: TextStyle(
                                                color: Color.fromRGBO(148, 152, 179, 1),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14),
                                          ),
                                        ]),
                                      ),
                                      onTap: () => Navigator.of(context).push(
                                          CupertinoPageRoute(builder: (context) => const PhoneServiceInfoScreen())),
                                    ),
                                    ServiceCarouselCard(
                                      title: 'Бирге для интернета PRO + ИВИ',
                                      subTitle: RichText(
                                        text: const TextSpan(children: [
                                          TextSpan(
                                            text: '220 сом',
                                            style: TextStyle(
                                                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
                                          ),
                                          TextSpan(
                                            text: ' / за 4 недели',
                                            style: TextStyle(
                                                color: Color.fromRGBO(148, 152, 179, 1),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14),
                                          ),
                                        ]),
                                      ),
                                      descriptionTitle: 'Закончился интернет?',
                                      description: "Подключите выгодный интернет пакет на 4 недели или на неделю!",
                                      onTap: () => Navigator.of(context).push(
                                          CupertinoPageRoute(builder: (context) => const PhoneServiceInfoScreen())),
                                    ),
                                    ServiceCarouselCard(
                                      title: 'Бирге для интернета PRO + ИВИ',
                                      subTitle: RichText(
                                        text: const TextSpan(children: [
                                          TextSpan(
                                            text: '60 сом',
                                            style: TextStyle(
                                                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
                                          ),
                                          TextSpan(
                                            text: ' / за 4 недели',
                                            style: TextStyle(
                                                color: Color.fromRGBO(148, 152, 179, 1),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14),
                                          ),
                                        ]),
                                      ),
                                      description: "Подключите выгодный интернет пакет на 4 недели или на неделю!",
                                      onTap: () => Navigator.of(context).push(
                                          CupertinoPageRoute(builder: (context) => const PhoneServiceInfoScreen())),
                                    ),
                                    ServiceCarouselCard(
                                      title: 'Бирге для интернета PRO + ИВИ',
                                      subTitle: RichText(
                                        text: const TextSpan(children: [
                                          TextSpan(
                                            text: '690 сом',
                                            style: TextStyle(
                                                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
                                          ),
                                          TextSpan(
                                            text: ' / за 4 недели',
                                            style: TextStyle(
                                                color: Color.fromRGBO(148, 152, 179, 1),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14),
                                          ),
                                        ]),
                                      ),
                                      descriptionTitle: 'Закончился интернет?',
                                      description: "Подключите выгодный интернет пакет на 4 недели или на неделю!",
                                      onTap: () => Navigator.of(context).push(
                                          CupertinoPageRoute(builder: (context) => const PhoneServiceInfoScreen())),
                                    ),
                                    ServiceCarouselCard(
                                      title: 'Бирге для интернета PRO + ИВИ',
                                      subTitle: RichText(
                                        text: const TextSpan(children: [
                                          TextSpan(
                                            text: '690 сом',
                                            style: TextStyle(
                                                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
                                          ),
                                          TextSpan(
                                            text: ' / за 4 недели',
                                            style: TextStyle(
                                                color: Color.fromRGBO(148, 152, 179, 1),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14),
                                          ),
                                        ]),
                                      ),
                                      onTap: () => Navigator.of(context).push(
                                          CupertinoPageRoute(builder: (context) => const PhoneServiceInfoScreen())),
                                    ),
                                    ServiceCarouselCard(
                                      title: 'Бирге для интернета PRO + ИВИ',
                                      subTitle: RichText(
                                        text: const TextSpan(children: [
                                          TextSpan(
                                            text: '690 сом',
                                            style: TextStyle(
                                                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
                                          ),
                                          TextSpan(
                                            text: ' / за 4 недели',
                                            style: TextStyle(
                                                color: Color.fromRGBO(148, 152, 179, 1),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14),
                                          ),
                                        ]),
                                      ),
                                      descriptionTitle: 'Закончился интернет?',
                                      description: "Подключите выгодный интернет пакет на 4 недели или на неделю!",
                                      onTap: () => Navigator.of(context).push(
                                          CupertinoPageRoute(builder: (context) => const PhoneServiceInfoScreen())),
                                    ),
                                    ServiceCarouselCard(
                                      title: 'Instagram + WhatsApp',
                                      subTitle: RichText(
                                        text: const TextSpan(children: [
                                          TextSpan(
                                            text: '60 сом',
                                            style: TextStyle(
                                                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
                                          ),
                                          TextSpan(
                                            text: ' / за 4 недели',
                                            style: TextStyle(
                                                color: Color.fromRGBO(148, 152, 179, 1),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14),
                                          ),
                                        ]),
                                      ),
                                      description: 'Безлимитный трафик на YouTube и WhatsApp',
                                      onTap: () => Navigator.of(context).push(
                                          CupertinoPageRoute(builder: (context) => const PhoneServiceInfoScreen())),
                                    ),
                                    ServiceCarouselCard(
                                      title: 'Бирге для интернета PRO + ИВИ',
                                      subTitle: RichText(
                                        text: const TextSpan(children: [
                                          TextSpan(
                                            text: '690 сом',
                                            style: TextStyle(
                                                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
                                          ),
                                          TextSpan(
                                            text: ' / за 4 недели',
                                            style: TextStyle(
                                                color: Color.fromRGBO(148, 152, 179, 1),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14),
                                          ),
                                        ]),
                                      ),
                                      onTap: () => Navigator.of(context).push(
                                          CupertinoPageRoute(builder: (context) => const PhoneServiceInfoScreen())),
                                    ),
                                  ],
                                ),
                              ],
                            ),
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
      ),
    );
  }

  Widget getExpandedCard({required String title, String? body}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 26),
      child: ExpansionTileCard(
        borderRadius: BorderRadius.circular(16),
        title: Text(
          title,
          style: const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
        ),
        children: <Widget>[
          SingleChildScrollView(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 13.0,
                ),
                child: Text(
                  body ?? "Пока тут пусто",
                  style: const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void changeParentPage({required int page}) async {
    parentPageController.jumpToPage(page);
    currentPage = page;

    if (mounted) {
      setState(() {});
    }
  }
}
