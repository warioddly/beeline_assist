import 'package:beeline_assistant/presentation/widgets/yellow_button.dart';
import 'package:flutter/material.dart';

class CarouselCard extends StatefulWidget {

  const CarouselCard({
    Key? key,
    this.onTap,
    required this.title,
    this.subTitle,
    this.padding,
    this.bodyTitle,
    this.body,
  }) : super(key: key);


  final Function()? onTap;
  final String title;
  final RichText? subTitle;
  final RichText? bodyTitle;
  final RichText? body;
  final EdgeInsetsGeometry? padding;


  @override
  _CarouselCardState createState() => _CarouselCardState();
}

class _CarouselCardState extends State<CarouselCard> with RouteAware {


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 243,
      padding: widget.padding ?? const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(
            widget.title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),

          widget.subTitle ?? const SizedBox(),

          const SizedBox(height: 3),

          widget.subTitle ?? const SizedBox(),

          Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            height: 1,
            width: double.infinity,
            color: const Color.fromRGBO(148, 152, 179, 1),
          ),

          widget.bodyTitle ?? const SizedBox(),

          RichText(
            text: const TextSpan(
                children: [

                  TextSpan(
                      text: '40 ГБ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w600
                      )
                  ),
                  TextSpan(
                      text: ' интернета',
                      style: TextStyle(
                          color: Color.fromRGBO(144, 144, 144, 1),
                          fontSize: 12,
                          fontWeight: FontWeight.w400
                      )
                  ),

                ]
            ),
          ),

          const SizedBox(height: 5),

          RichText(
            text: const TextSpan(
                children: [

                  TextSpan(
                      text: '15 ГБ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w600
                      )
                  ),
                  TextSpan(
                      text: ' IVI',
                      style: TextStyle(
                          color: Color.fromRGBO(144, 144, 144, 1),
                          fontSize: 12,
                          fontWeight: FontWeight.w400
                      )
                  ),

                ]
            ),
          ),

          const SizedBox(height: 5),

          RichText(
            text: const TextSpan(
                children: [

                  TextSpan(
                      text: '40 мин',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w600
                      )
                  ),
                  TextSpan(
                      text: ' на звонки вне сети',
                      style: TextStyle(
                          color: Color.fromRGBO(144, 144, 144, 1),
                          fontSize: 12,
                          fontWeight: FontWeight.w400
                      )
                  ),

                ]
            ),
          ),

          const SizedBox(height: 5),

          RichText(
            text: const TextSpan(
                children: [

                  TextSpan(
                      text: 'Instagram, WhatsApp, Telegram ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w600
                      )
                  ),
                  TextSpan(
                      text: ' бесплатный дополнительный трафик',
                      style: TextStyle(
                          color: Color.fromRGBO(144, 144, 144, 1),
                          fontSize: 12,
                          fontWeight: FontWeight.w400
                      )
                  ),

                ]
            ),
          ),

          const SizedBox(height: 5),

          RichText(
            text: const TextSpan(
                children: [

                  TextSpan(
                      text: '8 ГБ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w600
                      )
                  ),
                  TextSpan(
                      text: ' на раздачу Wi-Fi',
                      style: TextStyle(
                          color: Color.fromRGBO(144, 144, 144, 1),
                          fontSize: 12,
                          fontWeight: FontWeight.w400
                      )
                  ),

                ]
            ),
          ),

          const SizedBox(height: 10),

          Row(
            children: [
              Expanded(child: YellowButton(
                title: 'Подключить',
                onPressed: widget.onTap,
              ))
            ],
          )

        ],
      ),
    );
  }

}
