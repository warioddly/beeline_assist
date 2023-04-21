import 'package:beeline_assistant/presentation/pages/auth/sign_up_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> with RouteAware {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/bibi.png'),
              fit: BoxFit.scaleDown,
              alignment: Alignment.bottomRight,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                  child: Container(
                  constraints: const BoxConstraints(maxWidth: 400),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [

                      const Text(
                        'Привет!',
                        style: TextStyle(color: Colors.white, fontSize: 43, fontWeight: FontWeight.bold, ),
                      ),

                      const SizedBox(height: 6),

                      const Text(
                        'Меня зовут Bi Bi. Я Ваш личный помощник!\nЧем я могу вам помочь?',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w300),
                      ),

                      const SizedBox(height: 44),

                      TextButton(
                        onPressed: () => Navigator.push(context, CupertinoPageRoute(builder: (context) => const SignUpScreen())),
                        style: const ButtonStyle(
                          shape: MaterialStatePropertyAll(CircleBorder()),
                          padding: MaterialStatePropertyAll(EdgeInsets.all(30)),
                          backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(249, 212, 35, 1)),
                          foregroundColor: MaterialStatePropertyAll(Colors.white24),
                        ),
                        child: const Icon( Icons.arrow_forward_ios, color: Colors.black ),
                      )

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
