import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MenuCard extends StatefulWidget {
  const MenuCard({Key? key, this.onTap, required this.title, this.subTitle, this.headerText, this.padding})
      : super(key: key);

  final Function()? onTap;
  final String? headerText;
  final String title;
  final String? subTitle;
  final EdgeInsetsGeometry? padding;

  @override
  _MenuCardState createState() => _MenuCardState();
}

class _MenuCardState extends State<MenuCard> with RouteAware {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        width: double.infinity,
        padding: widget.padding ?? const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                widget.headerText != null
                    ? Text(
                        widget.headerText!,
                        style: const TextStyle(
                            color: Color.fromRGBO(0, 148, 255, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            overflow: TextOverflow.ellipsis),
                      )
                    : const SizedBox(),
                SizedBox(height: widget.headerText != null ? 3 : 0),
                Text(
                  widget.title,
                  style: const TextStyle(
                      color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600, overflow: TextOverflow.ellipsis),
                ),
                const SizedBox(height: 3),
                widget.subTitle != null
                    ? Text(
                        widget.subTitle!,
                        style: const TextStyle(
                            color: Color.fromRGBO(148, 152, 179, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            overflow: TextOverflow.ellipsis),
                      )
                    : const SizedBox(),
              ],
            ),
            SvgPicture.asset('assets/images/icons/arrow_right.svg', semanticsLabel: 'A red up arrow')
          ],
        ),
      ),
    );
  }
}
