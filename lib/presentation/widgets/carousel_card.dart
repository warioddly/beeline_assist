import 'package:flutter/material.dart';

class CarouselCard extends StatefulWidget {

  const CarouselCard({Key? key, this.onTap, required this.title, this.subTitle, this.padding }) : super(key: key);

  final Function()? onTap;
  final String title;
  final RichText? subTitle;
  final EdgeInsetsGeometry? padding;

  @override
  _CarouselCardState createState() => _CarouselCardState();
}

class _CarouselCardState extends State<CarouselCard> with RouteAware {


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 243,
      padding: widget.padding ?? const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          // widget.headerText != null ? Text(
          //   widget.headerText!,
          //   style: const TextStyle(
          //       color: Color.fromRGBO(0, 148, 255, 1),
          //       fontSize: 14,
          //       fontWeight: FontWeight.w400,
          //       overflow: TextOverflow.ellipsis
          //   ),
          // ) : const SizedBox(),
          //
          // SizedBox(height: widget.headerText != null ? 3 : 0),
          //
          // Text(
          //   widget.title,
          //   style: const TextStyle(
          //       color: Colors.black,
          //       fontSize: 16,
          //       fontWeight: FontWeight.w600,
          //       overflow: TextOverflow.ellipsis
          //   ),
          // ),
          //
          // const SizedBox(height: 3),
          //
          // widget.subTitle != null ? Text(
          //   widget.subTitle!,
          //   style: const TextStyle(
          //       color: Color.fromRGBO(148, 152, 179, 1),
          //       fontSize: 14,
          //       fontWeight: FontWeight.w400,
          //       overflow: TextOverflow.ellipsis
          //   ),
          // ) : const SizedBox(),

        ],
      ),
    );
  }

}
