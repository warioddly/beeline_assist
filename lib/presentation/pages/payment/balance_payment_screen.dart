import 'package:beeline_assistant/presentation/widgets/custom_appbar.dart';
import 'package:beeline_assistant/presentation/widgets/text_input_field.dart';
import 'package:beeline_assistant/presentation/widgets/yellow_button.dart';
import 'package:flutter/material.dart';

class BalancePaymentScreen extends StatefulWidget {
  const BalancePaymentScreen({Key? key}) : super(key: key);

  @override
  _BalancePaymentScreenState createState() => _BalancePaymentScreenState();
}

class _BalancePaymentScreenState extends State<BalancePaymentScreen> with RouteAware {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppbar(),
      extendBodyBehindAppBar: true,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: Container(
                  constraints: const BoxConstraints(maxWidth: 480),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // const Text(
                      //   'Beeline',
                      //   style: TextStyle(
                      //       color: Color.fromRGBO(37, 31, 31, 1),
                      //       fontSize: 32,
                      //       fontWeight: FontWeight.w700
                      //   ),
                      // ),

                      Image.asset(
                        'assets/images/logo/balance_logo.png',
                        alignment: Alignment.centerLeft,
                        height: 69,
                      ),
                      TextInputField(
                        title: 'На Ваш номер был выслан 6-ти значный код',
                        textType: TextInputType.phone,
                      ),
                      const SizedBox(height: 21),
                      SelectableText(
                        'Код был выслан повторно',
                        onTap: () {},
                        textAlign: TextAlign.center,
                        style: const TextStyle(color: Color.fromRGBO(148, 152, 179, 1), fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
              ),
            )),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 38),
                child: YellowButton(title: 'Продолжить', onPressed: () {}),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
