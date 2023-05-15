import 'package:beeline_assistant/presentation/widgets/yellow_button.dart';
import 'package:flutter/material.dart';

class MyServiceInfoCard extends StatefulWidget {
  const MyServiceInfoCard({Key? key, this.onTap, required this.title, this.subTitle, this.price}) : super(key: key);

  final Function()? onTap;
  final String title;
  final String? subTitle;
  final String? price;

  @override
  _MyServiceInfoCardState createState() => _MyServiceInfoCardState();
}

class _MyServiceInfoCardState extends State<MyServiceInfoCard> with RouteAware {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(color: const Color.fromRGBO(35, 35, 37, 1), borderRadius: BorderRadius.circular(16)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  widget.title,
                  maxLines: 2,
                  style: const TextStyle(
                      color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700, overflow: TextOverflow.ellipsis),
                ),
                SizedBox(height: widget.price != null ? 5 : 0),
                widget.price != null
                    ? Text(
                        widget.price!,
                        style: const TextStyle(
                            color: Color.fromRGBO(148, 152, 179, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            overflow: TextOverflow.ellipsis),
                      )
                    : const SizedBox(),
              ],
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              children: [
                widget.subTitle != null
                    ? Text(
                        widget.subTitle!,
                        maxLines: 2,
                        style: const TextStyle(
                            color: Color.fromRGBO(148, 152, 179, 1),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            overflow: TextOverflow.ellipsis),
                      )
                    : const SizedBox(),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: YellowButton(
                        title: 'Подробнее',
                        onPressed: widget.onTap,
                        fontSize: 14,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
