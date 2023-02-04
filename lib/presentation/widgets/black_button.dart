import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BlackButton extends StatefulWidget {

  const BlackButton({Key? key, this.onPressed, required this.title }) : super(key: key);

  final String title;
  final Function()? onPressed;

  @override
  _BlackButtonState createState() => _BlackButtonState();
}

class _BlackButtonState extends State<BlackButton> with RouteAware {

  String get title => widget.title;
  Function()? get onPressed => widget.onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.15), offset: Offset(0, 4), blurRadius: 5.0)
        ],
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromRGBO(35, 35, 37, 1),
            Color.fromRGBO(45, 45, 45, 1),
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
          minimumSize: MaterialStateProperty.all(Size(40, 50)),
          backgroundColor:
          MaterialStateProperty.all(Colors.transparent),
          elevation: MaterialStateProperty.all(3),
          shadowColor: MaterialStateProperty.all(Colors.transparent),
        ),
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 38, vertical: 8),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

}
