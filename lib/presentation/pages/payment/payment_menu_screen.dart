import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_appbar.dart';
import 'balance_payment_screen.dart';

class PaymentMenuScreen extends StatefulWidget {
  const PaymentMenuScreen({Key? key}) : super(key: key);

  @override
  _PaymentMenuScreenState createState() => _PaymentMenuScreenState();
}

class _PaymentMenuScreenState extends State<PaymentMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromRGBO(255, 159, 0, 1), Color.fromRGBO(255, 201, 0, 1)],
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                constraints: const BoxConstraints(maxWidth: 482),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: menuButton(
                              title: 'Доверительный платеж',
                              onPressed: () {
                                print('wwww');
                              }),
                        )
                      ],
                    ),
                    const SizedBox(height: 25),
                    Row(
                      children: [
                        Expanded(
                          child: menuButton(
                            title: 'Balance.kg',
                            onPressed: () => Navigator.of(context)
                                .push(CupertinoPageRoute(builder: (context) => const BalancePaymentScreen())),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget menuButton({Function()? onPressed, required String title}) => Container(
        height: 42,
        decoration: BoxDecoration(
          boxShadow: const [BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.15), offset: Offset(0, 4), blurRadius: 5.0)],
          borderRadius: BorderRadius.circular(50),
        ),
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
            minimumSize: MaterialStateProperty.all(const Size(40, 50)),
            backgroundColor: MaterialStateProperty.all(Colors.white),
            elevation: MaterialStateProperty.all(3),
            shadowColor: MaterialStateProperty.all(Colors.transparent),
          ),
          onPressed: onPressed,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Text(
              title,
              maxLines: 1,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
          ),
        ),
      );
}
