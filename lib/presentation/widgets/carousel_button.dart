import 'package:flutter/material.dart';

class CarouselButton extends StatefulWidget {

  const CarouselButton({Key? key, this.onPressed, required this.title, this.disabled = true }) : super(key: key);

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
        boxShadow: const [
          BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.15),
              offset: Offset(0, 4), blurRadius: 5.0)
        ],
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: widget.disabled ? [
            const Color.fromRGBO(255, 255, 255, 1),
            const Color.fromRGBO(255, 255, 255, 1),
          ] : [
            const Color.fromRGBO(255, 159, 0, 1),
            const Color.fromRGBO(255, 201, 0, 1),
          ],
        ),
        color: const Color.fromRGBO(255, 201, 0, 1),
        borderRadius: BorderRadius.circular(50),
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
              color: widget.disabled ? const Color.fromRGBO(148, 152, 179, 1) : Colors.black,
            ),
          ),
        ),
      ),
    );
  }

}
