import 'package:beeline_assistant/presentation/pages/auth/password_screen.dart';
import 'package:beeline_assistant/presentation/widgets/text_input_field.dart';
import 'package:beeline_assistant/presentation/widgets/yellow_button.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {

  const SignUpScreen({Key? key }) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> with RouteAware {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Expanded(
              child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Center(
                    child: Container(
                      constraints: const BoxConstraints(
                          maxWidth: 480
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const Text(
                            'Beeline',
                            style: TextStyle(
                                color: Color.fromRGBO(37, 31, 31, 1),
                                fontSize: 32,
                                fontWeight: FontWeight.w700
                            ),
                          ),
                          TextInputField(
                            title: 'Войдите чтобы продолжить',
                            textType: TextInputType.phone,
                          ),
                          const SizedBox(height: 21),
                          SelectableText(
                            'Не получили код?',
                            onTap: () {},
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                color: Color.fromRGBO(148, 152, 179, 1),
                                fontWeight: FontWeight.w400
                            ),
                          )

                        ],
                      ),
                    ),
                  ),
                )
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 38),
                child: YellowButton(title: 'Продолжить', onPressed: () {Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PasswordScreen()),
                );}),
              ),
            ),

          ],
        ),
      ),
    );
  }

}
