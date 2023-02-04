import 'package:beeline_assistant/presentation/widgets/yellow_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({Key? key}) : super(key: key);

  @override
  _PasswordScreenState createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> with RouteAware {
  final FocusNode _focusNode1 = FocusNode();
  final FocusNode _focusNode2 = FocusNode();
  final FocusNode _focusNode3 = FocusNode();
  final FocusNode _focusNode4 = FocusNode();
  final FocusNode _focusNode5 = FocusNode();
  final FocusNode _focusNode6 = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: false,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
        onPressed: () {
      Navigator.of(context).pop();
    },
    icon: new SvgPicture.asset('assets/images/icons/back_arrow_navigation.svg'),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Beeline',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 32.0)),
                Text(
                  'На Ваш номер был выслан 6-ти значный код',
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w300,
                      fontSize: 19.0),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 50,
                child: Padding(
                  padding: const EdgeInsets.only(right: 5.0),
                  child: TextField(
                    focusNode: _focusNode1,
                    textAlign: TextAlign.center,
                    maxLength: 1,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      counterText: '',
                    ),
                    onChanged: (text) {
                      if (text.length == 1) {
                        FocusScope.of(context).requestFocus(_focusNode2);
                      }
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: SizedBox(
                  width: 50,
                  child: TextField(
                    focusNode: _focusNode2,
                    textAlign: TextAlign.center,
                    maxLength: 1,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      counterText: '',
                    ),
                    onChanged: (text) {
                      if (text.length == 1) {
                        FocusScope.of(context).requestFocus(_focusNode3);
                      }
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: SizedBox(
                  width: 50,
                  child: TextField(
                    focusNode: _focusNode3,
                    textAlign: TextAlign.center,
                    maxLength: 1,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      counterText: '',
                    ),
                    onChanged: (text) {
                      if (text.length == 1) {
                        FocusScope.of(context).requestFocus(_focusNode4);
                      }
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: SizedBox(
                  width: 50,
                  child: TextField(
                    focusNode: _focusNode4,
                    textAlign: TextAlign.center,
                    maxLength: 1,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      counterText: '',
                    ),
                    onChanged: (text) {
                      if (text.length == 1) {
                        FocusScope.of(context).requestFocus(_focusNode5);
                      }
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: SizedBox(
                  width: 50,
                  child: TextField(
                    focusNode: _focusNode5,
                    textAlign: TextAlign.center,
                    maxLength: 1,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      counterText: '',
                    ),
                    onChanged: (text) {
                      if (text.length == 1) {
                        FocusScope.of(context).requestFocus(_focusNode6);
                      }
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: SizedBox(
                  width: 50,
                  child: TextField(
                    focusNode: _focusNode6,
                    textAlign: TextAlign.center,
                    maxLength: 1,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      counterText: '',
                    ),
                    onChanged: (text) {
                      if (text.length == 1) {
                        FocusScope.of(context).requestFocus(_focusNode6);
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only( top: 10.0),
            child: const Text(
              'Не получили код?',
              style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w300,
                  fontSize: 16.0),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(top:60),
              child: YellowButton(
                  title: 'Продолжить',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PasswordScreen()),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
