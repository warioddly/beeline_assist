import 'package:beeline_assistant/presentation/widgets/yellow_button.dart';
import 'package:flutter/material.dart';

class CarouselItems extends StatefulWidget {
  const CarouselItems(
      {Key? key,
      required this.title,
      required this.servicePrice,
      required this.serviceTimePeriod,
      required this.callMinute,
      required this.smsNumber,
      required this.mobileData})
      : super(key: key);

  final String title;
  final String serviceTimePeriod;
  final String servicePrice;
  final String callMinute;
  final String smsNumber;
  final String mobileData;
  @override

  _CarouselItemsState createState() => _CarouselItemsState();
}

class _CarouselItemsState extends State<CarouselItems> with RouteAware {
  String get title => widget.title;
  String get servicePrice => widget.servicePrice;
  String get serviceTimePeriod => widget.serviceTimePeriod;
  String get callMinute => widget.callMinute;
  String get smsNumber => widget.smsNumber;
  String get mobileData => widget.mobileData;

  @override
  Widget build(BuildContext context) {
    return
    Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: RichText(
                    text: TextSpan(
                      text:
                          servicePrice == '-1' ? 'Бесплатно' : '$servicePrice сом',
                      style: const TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' / $serviceTimePeriod',
                          style: const TextStyle(
                            color: Color.fromRGBO(148, 152, 179, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  )),
              Container(
                color: const Color.fromRGBO(148, 152, 179, 1),
                width: double.infinity,
                height: 1,
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: RichText(
                    text: TextSpan(
                      text: '$callMinute минут',
                      style: const TextStyle(
                        color: Color.fromRGBO(37, 31, 31, 1),
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                      children: const <TextSpan>[
                        TextSpan(
                          text: ' на внутри сети',
                          style: TextStyle(
                            color: Color.fromRGBO(148, 152, 179, 1),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: RichText(
                    text: TextSpan(
                      text: '$smsNumber SMS',
                      style: const TextStyle(
                        color: Color.fromRGBO(37, 31, 31, 1),
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                      children: const <TextSpan>[
                        TextSpan(
                          text: ' внутри сети',
                          style: TextStyle(
                            color: Color.fromRGBO(148, 152, 179, 1),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: RichText(
                    text: TextSpan(
                      text: '$mobileData МБ',
                      style: const TextStyle(
                        color: Color.fromRGBO(37, 31, 31, 1),
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                      children: const <TextSpan>[
                        TextSpan(
                          text: ' на максимальной скорости',
                          style: TextStyle(
                            color: Color.fromRGBO(148, 152, 179, 1),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  )),
              Center(
                child: Container(
                  width: double.infinity,
                  constraints: const BoxConstraints(maxWidth: 550.0),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: YellowButton(title: 'Подключить', onPressed: () {}),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }
}
