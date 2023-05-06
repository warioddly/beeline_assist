import 'package:beeline_assistant/presentation/cubit/auth/auth_cubit.dart';
import 'package:beeline_assistant/presentation/pages/home/home_screen.dart';
import 'package:beeline_assistant/presentation/widgets/text_input_field.dart';
import 'package:beeline_assistant/presentation/widgets/yellow_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../widgets/custom_appbar.dart';


class CodeConfirmationScreen extends StatefulWidget {

  const CodeConfirmationScreen({ Key? key, required this.verificationId }) : super(key: key);

  final String verificationId;

  @override
  State<StatefulWidget> createState() => _CodeConfirmationScreenState();
}


class _CodeConfirmationScreenState extends State<CodeConfirmationScreen> with RouteAware {


  AuthCubit get authCubit => BlocProvider.of<AuthCubit>(context);
  final TextEditingController _codeController = TextEditingController();
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {

          if (_isLoading) {
            return false;
          }

          return true;
        },
        child: Scaffold(
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
                child: BlocListener<AuthCubit, AuthState>(
                  bloc: authCubit,
                  listener: (context, state) {


                    if (state is AuthVerificationError) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(state.error.toString()),
                          backgroundColor: Colors.red,
                        ),
                      );
                    }


                    if (state is! AuthLoading) {
                      _isLoading = false;
                    }


                    if (state is AuthVerificationComplete) {
                      authCubit.loginWithCredential(state.credential);
                      _isLoading = true;
                    }


                    if (state is AuthUserVerified) {

                      Navigator.pushReplacement(context, CupertinoPageRoute(builder: (context) => const HomeScreen()));

                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Success..."),
                          backgroundColor: Colors.green,
                        ),
                      );

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


                    setState(() { });

                  },
                  child: Container(
                    constraints: const BoxConstraints(maxWidth: 480),
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
                          'Введите код',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        ),

                        const SizedBox(height: 20),

                        TextInputField(
                          controller: _codeController,
                          hintText: "Введите код",
                          textType: TextInputType.phone,
                          inputFormatters: [
                            MaskTextInputFormatter(
                                mask: '###-###',
                                filter: { "#": RegExp(r'[0-9]') },
                                type: MaskAutoCompletionType.lazy
                            )
                          ],
                        ),

                        const SizedBox(height: 30),

                        YellowButton(
                          onPressed: () {


                            if (_isLoading) return;

                            String code = _codeController.text.replaceAll(RegExp(r'[^\d]'), '');

                            print(code);
                            print(code.length == 7);

                            if (code.length == 6) {
                              authCubit.onVerifyOtp(widget.verificationId, code);
                            }
                            else {

                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text("Введите валиадный код"),
                                  backgroundColor: Colors.red,
                                ),
                              );

                            }

                          },
                          title: "Продолжить",
                        )

                      ],
                    ),
                  ),
                ),
              ),
            )
        ),
    );
  }
}
