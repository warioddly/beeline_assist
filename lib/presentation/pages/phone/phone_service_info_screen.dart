import 'package:beeline_assistant/presentation/widgets/black_button.dart';
import 'package:beeline_assistant/presentation/widgets/yellow_button.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_appbar.dart';

class PhoneServiceInfoScreen extends StatefulWidget {
  const PhoneServiceInfoScreen({Key? key}) : super(key: key);

  @override
  _PhoneServiceInfoScreenState createState() => _PhoneServiceInfoScreenState();
}

class _PhoneServiceInfoScreenState extends State<PhoneServiceInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(),
      extendBodyBehindAppBar: true,
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.only(top: 74, left: 16, right: 16),
        child: Scrollbar(
          child: SingleChildScrollView(
            primary: true,
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: AlignmentDirectional.center,
                    child: Container(
                      margin: const EdgeInsets.only(top: 32),
                      constraints: const BoxConstraints(
                        maxWidth: 1039,
                      ),
                      child: Wrap(
                        spacing: 45.0,
                        runSpacing: 33.0,
                        children: [
                          Container(
                            constraints: const BoxConstraints(
                              maxWidth: 507,
                            ),
                            decoration: BoxDecoration(color: const Color.fromRGBO(35, 35, 37, 1), borderRadius: BorderRadius.circular(12)),
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: [
                                    Text(
                                      'Тариф'.toUpperCase(),
                                      style: const TextStyle(
                                          color: Color.fromRGBO(0, 148, 255, 1),
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16),
                                    ),
                                    const Text(
                                      'Безлимит+',
                                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 24),
                                    ),
                                    const Text(
                                      'Смотрите бесплатно',
                                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 16),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.symmetric(vertical: 13),
                                      width: double.infinity,
                                      height: 1,
                                      color: Colors.white,
                                    ),
                                    RichText(
                                      text: const TextSpan(children: [
                                        TextSpan(
                                            text: 'Безлимитный',
                                            style: TextStyle(
                                                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600)),
                                        TextSpan(
                                            text: ' интернет',
                                            style: TextStyle(
                                                color: Color.fromRGBO(144, 144, 144, 1),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600)),
                                      ]),
                                    ),
                                    const SizedBox(height: 13),
                                    RichText(
                                      text: const TextSpan(children: [
                                        TextSpan(
                                            text: 'ИВИ',
                                            style: TextStyle(
                                                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600)),
                                        TextSpan(
                                            text: ' подписка на онлайн-кинетеатр',
                                            style: TextStyle(
                                                color: Color.fromRGBO(144, 144, 144, 1),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600)),
                                      ]),
                                    ),
                                    const SizedBox(height: 13),
                                    RichText(
                                      text: const TextSpan(children: [
                                        TextSpan(
                                            text: '100 минут',
                                            style: TextStyle(
                                                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600)),
                                        TextSpan(
                                            text: ' на звонки вне сети',
                                            style: TextStyle(
                                                color: Color.fromRGBO(144, 144, 144, 1),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600)),
                                      ]),
                                    ),
                                    const SizedBox(height: 13),
                                    RichText(
                                      text: const TextSpan(children: [
                                        TextSpan(
                                            text: 'Безлимитные',
                                            style: TextStyle(
                                                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600)),
                                        TextSpan(
                                            text: ' звонки и SMS внутри сети',
                                            style: TextStyle(
                                                color: Color.fromRGBO(144, 144, 144, 1),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600)),
                                      ]),
                                    ),
                                    const SizedBox(height: 13),
                                    RichText(
                                      text: const TextSpan(children: [
                                        TextSpan(
                                            text: 'Бесплатная',
                                            style: TextStyle(
                                                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600)),
                                        TextSpan(
                                            text: ' раздача Wi-Fi',
                                            style: TextStyle(
                                                color: Color.fromRGBO(144, 144, 144, 1),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600)),
                                      ]),
                                    ),
                                    const SizedBox(height: 13),
                                    RichText(
                                      text: const TextSpan(children: [
                                        TextSpan(
                                            text: '120 сом',
                                            style: TextStyle(
                                                color: Colors.white, fontSize: 32, fontWeight: FontWeight.w700)),
                                        TextSpan(
                                            text: ' / 4 недели',
                                            style: TextStyle(
                                                color: Color.fromRGBO(144, 144, 144, 1),
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400)),
                                      ]),
                                    ),
                                    const SizedBox(height: 13),
                                  ],
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    constraints: const BoxConstraints(maxWidth: 270),
                                    child: YellowButton(
                                      title: 'Все тарифы',
                                      onPressed: () { },
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            constraints: const BoxConstraints(
                              maxWidth: 487,
                            ),
                            child: Column(
                              children: [
                                getExpandedCard(
                                    title: 'Управляйте тарифом в любое время:',
                                    body:
                                        """Команда перехода *555*9911# Команда проверки остатка пакетов *505#, *604#. На тарифе можно досрочно обновить пакеты по тарифу набрав команду *2200# - с баланса спишется абонентская плата и все пакеты по тарифу обновятся."""),
                                getExpandedCard(
                                  title: 'В случае окончания основного пакета',
                                ),
                                getExpandedCard(
                                    title: 'Стоимость вне пакетов или не списалась абонентская плата',
                                    body:
                                        """Если на балансе недостаточно средств для списания 4х недельной абонентской платы, в зависимости от состояния баланса будет списываться до 20 сомов в день за пакет минут и SMS внутри сети, а также пакет интернета на сутки, если на балансе:
1. более 20 сомов, то списывается 20 сомов и предоставляются 250 МБ, 500 минут и 500 SMS внутри сети на сутки;
2. менее 20 сомов, то списывается весь остаток и предоставляется пакет связи пропорционального объема.
Механика определения выдачи пакетов пропорционального объема:
500 мин, 500 SMS, 250 МБ предоставляются за 20 сомов в день – это 100%.
Например, на балансе Абонента 12 сомов, как рассчитать пакеты связи пропорционального объема:
20 сомов – 100%
12 сомов – ?
12 сомов * 100% / 20 сомов = 60%
500 мин, 500 SMS, 250 МБ – 100%
? мин, ? SMS, ? МБ – 60%
500 мин, 500 SMS, 250 МБ * 60% / 100% = 300 мин, 300 SMS, 150 МБ
Таким образом, 12 сомов списываются и Абоненту предоставляются пакет связи пропорционального объема в размере: 300 мин, 300 SMS, 150 МБ.
Чтобы вернуться к 4х недельному списанию, рекомендуем пополнить баланс от 990 сомов. Отключение выдачи ежедневных пакетов возможно по Заявлению на отключение в офисах Билайн с паспортом или любым другим документом, удостоверяющим личность абонента, на которого оформлен номер. Срок рассмотрения Заявления на отключение составляет 3 рабочих дня.
Стоимость вне пакетов или недостаточно средств для списания ежедневной платы:
Звонки внутри Beeline KG - 1.14 сом/мин;
Звонки на номера других мобильных операторов КР - 3 сом/мин;
Звонки на номера фиксированных операторов КР - 5.85 сом/мин;
SMS внутри КР - 1 сом.
Входящие звонки с фиксированных операторов КР на прямые номера с префиксами 07755, 07759, 0312 455ххх и 0312 456ххх – 4.5 сом/мин
Шаг тарификации звонков – 10 сек.
Цены указаны с учетом НДС и НсП.
На тарифе интернет вне пакетов (по тарифу или любых других интернет-пакетов) не будет предоставляться. """),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: ExpansionTileCard(
        baseColor: const Color.fromRGBO(35, 35, 37, 1),
        expandedColor: const Color.fromRGBO(35, 35, 37, 1),
        borderRadius: BorderRadius.circular(16),
        title: Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
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
                  style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
