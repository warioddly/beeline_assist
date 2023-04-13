import 'package:flutter/material.dart';

class CarouselButton extends StatefulWidget {

  const CarouselButton({
    Key? key,
    this.onPressed,
    required this.title,
    this.disabled = true
  }) : super(key: key);

  final String title;
  final bool disabled;
  final Function()? onPressed;

  @override
  _CarouselButtonState createState() => _CarouselButtonState();
}

class _CarouselButtonState extends State<CarouselButton> with RouteAware {

  String get title => widget.title;

  Function()? get onPressed => widget.onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      decoration: BoxDecoration(
        color: widget.disabled ? null : const Color.fromRGBO(57, 57, 59, 1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
          ),
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          elevation: MaterialStateProperty.all(3),
          shadowColor: MaterialStateProperty.all(Colors.transparent),
        ),
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          child: Text(
            title,
            maxLines: 1,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: widget.disabled ? const Color.fromRGBO(141, 139, 140, 1) : Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
