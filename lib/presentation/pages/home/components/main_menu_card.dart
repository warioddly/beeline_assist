import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MenuCard extends StatefulWidget {

  const MenuCard({
    Key? key,
    required this.title,
    this.onTap,
    this.subTitle,
    this.headerText,
    this.padding,
    this.icon
  }) : super(key: key);

  final Function()? onTap;
  final String? headerText;
  final String title;
  final IconData? icon;
  final String? subTitle;
  final EdgeInsetsGeometry? padding;

  @override
  _MenuCardState createState() => _MenuCardState();
}

class _MenuCardState extends State<MenuCard> with RouteAware {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color.fromRGBO(35, 35, 37, 1),
      borderRadius: BorderRadius.circular(29),
      child: InkWell(
        overlayColor: const MaterialStatePropertyAll(Colors.white24),
        onTap: widget.onTap,
        borderRadius: BorderRadius.circular(29),
        child: Container(
          width: double.infinity,
          padding: widget.padding ?? const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(29)),
          child: Row(
            children: [

              if (widget.icon != null)
                Icon(
                  widget.icon,
                  size: 55,
                  color: const Color.fromRGBO(255, 159, 0, 1),
                ),

              const SizedBox(width: 16),

              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        if (widget.headerText != null) ...[
                          Text(
                            widget.headerText!,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                overflow: TextOverflow.ellipsis
                            ),
                          ),
                          const SizedBox(height: 13),
                        ],


                        Text(
                          widget.title,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              overflow: TextOverflow.ellipsis
                          ),
                        ),


                        const SizedBox(height: 3),


                        if (widget.subTitle != null)
                          Text(
                            widget.subTitle!,
                            style: const TextStyle(
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
    );
  }
}
