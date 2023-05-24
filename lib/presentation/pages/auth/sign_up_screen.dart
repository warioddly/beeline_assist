import 'package:beeline_assistant/presentation/cubit/auth/auth_cubit.dart';
import 'package:beeline_assistant/presentation/pages/auth/code_confirmation_screen.dart';
import 'package:beeline_assistant/presentation/widgets/text_input_field.dart';
import 'package:beeline_assistant/presentation/widgets/yellow_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../widgets/custom_appbar.dart';

class SignUpScreen extends StatefulWidget {

  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> with RouteAware {

  AuthCubit get authCubit => BlocProvider.of<AuthCubit>(context);

  final TextEditingController _phoneController = TextEditingController();
  bool _isLoading = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(),
      extendBodyBehindAppBar: true,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bibi.png'),
            fit: BoxFit.scaleDown,
            alignment: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 480),
            child: BlocListener<AuthCubit, AuthState>(
              bloc: authCubit,
              listener: (context, state) {


                if (state is AuthError) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(state.error.toString()),
                      backgroundColor: Colors.red,
                    ),
                  );
                }


                if (state is AuthOtpSent) {
                  Navigator.push(context, CupertinoPageRoute(builder: (context) => CodeConfirmationScreen(verificationId: state.verificationId,)));
                }


                if (state is AuthLoading) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Loading..."),
                      backgroundColor: Colors.green,
                    ),
                  );

                  _isLoading = true;
                }


                if (state is! AuthLoading) {
                  _isLoading = false;
                }


                setState(() { });

              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  const Text(
                    'Beeline',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 43,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const Text(
                    'Введите свой номер',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),

                  const SizedBox(height: 20),

                  TextInputField(
                    hintText: "+996 ",
                    controller: _phoneController,
                    textType: TextInputType.phone,
                    inputFormatters: [
                      MaskTextInputFormatter(
                          mask: '+996 (###) ###-###',
                          filter: { "#": RegExp(r'[0-9]') },
                          type: MaskAutoCompletionType.lazy
                      )
                    ],
                  ),

                  const SizedBox(height: 30),

                  YellowButton(
                    onPressed: () async {

                      if (_isLoading) return;

                      setState(() {
                        _isLoading = true;
                      });

                      String phoneNumber = _phoneController.text.replaceAll(RegExp(r'[^\d]'), '');

                      /// phoneNumber.length == 12 && phoneNumber == "+996554938009"
                      if (phoneNumber.length == 12) {

                        ScaffoldMessenger.of(context).clearSnackBars();
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Loading..."),
                            backgroundColor: Colors.green,
                          ),
                        );


                        await Future.delayed(const Duration(seconds: 2), () {
                          Navigator.push(context, CupertinoPageRoute(builder: (context) => const CodeConfirmationScreen(verificationId: "state.verificationId")));
                          setState(() {_isLoading = false;});

                        });

                        // authCubit.onSendOtp(phone: _phoneController.text);
                      } else {

                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Введите валиадный номер"),
                            backgroundColor: Colors.red,
                          ),
                        );


                        setState(() {
                          _isLoading = false;
                        });

                      }


                    },
                    title: "Продолжить",
                  ),

                  const SizedBox(height: 15),

                  SelectableText(
                    "Не получили код?",
                    onTap: () { },
                    style: const TextStyle(
                        color: Color.fromRGBO(148, 152, 179, 1),
                        fontWeight: FontWeight.w300
                    ),
                  )

                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}
