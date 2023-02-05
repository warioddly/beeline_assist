import 'package:beeline_assistant/presentation/widgets/yellow_button.dart';
import 'package:flutter/material.dart';

class ServiceCarouselCard extends StatefulWidget {
  const ServiceCarouselCard({
    Key? key,
    this.onTap,
    required this.title,
    this.subTitle,
    this.descriptionTitle,
    this.description,
  }) : super(key: key);

  final Function()? onTap;
  final String title;
  final RichText? subTitle;
  final String? descriptionTitle;
  final String? description;

  @override
  _ServiceCarouselCardState createState() => _ServiceCarouselCardState();
}

class _ServiceCarouselCardState extends State<ServiceCarouselCard> with RouteAware {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 243,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)),
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
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            height: 1,
            width: double.infinity,
            color: const Color.fromRGBO(148, 152, 179, 1),
          ),
          widget.descriptionTitle != null
              ? Text(
                  widget.descriptionTitle!,
                  style: const TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w600),
                )
              : const SizedBox(),
          widget.description != null
              ? Text(
                  widget.description!,
                  style: const TextStyle(
                      color: Color.fromRGBO(148, 152, 179, 1), fontSize: 12, fontWeight: FontWeight.w400),
                )
              : const SizedBox(),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                  child: YellowButton(
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
