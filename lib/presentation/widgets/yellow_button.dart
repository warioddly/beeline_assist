import 'package:flutter/material.dart';

class YellowButton extends StatefulWidget {
  const YellowButton({Key? key, this.onPressed, required this.title, this.fontSize = 16}) : super(key: key);

  final String title;
  final double fontSize;
  final Function()? onPressed;

  @override
  _YellowButtonState createState() => _YellowButtonState();
}

class _YellowButtonState extends State<YellowButton> with RouteAware {
  String get title => widget.title;

  Function()? get onPressed => widget.onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      decoration: BoxDecoration(
        boxShadow: const [BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.15), offset: Offset(0, 4), blurRadius: 5.0)],
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromRGBO(255, 159, 0, 1),
            Color.fromRGBO(255, 201, 0, 1),
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
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          elevation: MaterialStateProperty.all(3),
          shadowColor: MaterialStateProperty.all(Colors.transparent),
        ),
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: Text(
            title,
            maxLines: 1,
            style: TextStyle(
              fontSize: widget.fontSize,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
