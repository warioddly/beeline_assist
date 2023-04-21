import 'package:beeline_assistant/presentation/widgets/text_input_field.dart';
import 'package:beeline_assistant/presentation/widgets/yellow_button.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import '../../widgets/custom_appbar.dart';

class CodeConfirmationScreen extends StatefulWidget {

  const CodeConfirmationScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CodeConfirmationScreenState();
}

class _CodeConfirmationScreenState extends State<CodeConfirmationScreen> with RouteAware {
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
                  hintText: "Введите код",
                  textType: TextInputType.phone,
                  inputFormatters: [
                    MaskTextInputFormatter(
                        mask: '######',
                        filter: { "#": RegExp(r'[0-9]') },
                        type: MaskAutoCompletionType.lazy
                    )
                  ],
                ),

                const SizedBox(height: 30),

                YellowButton(
                  onPressed: () { },
                  title: "Продолжить",
                )

              ],
            ),
          ),
        ),
      )
    );
  }
}
