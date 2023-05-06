import 'package:flutter/material.dart';

class CarouselCard extends StatefulWidget {
  const CarouselCard({
    Key? key,
    this.onTap,
    required this.title,
    required this.subTitle,
    this.padding,
    this.bodyTitle,
    this.body,
  }) : super(key: key);

  final Function()? onTap;
  final String title;
  final String subTitle;
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
      width: double.infinity,
      padding: widget.padding ?? const EdgeInsets.all(32),
      margin: const EdgeInsets.only(top: 25),
      decoration: BoxDecoration(color: const Color.fromRGBO(35, 35, 37, 1), borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(
            widget.title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),

          Text(
            widget.subTitle,

          ),

          const SizedBox(height: 3),


        ],
      ),
    );
  }
}
