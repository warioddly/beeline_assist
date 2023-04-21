import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextInputField extends StatefulWidget {

  final TextEditingController? controller;
  final String? title;
  final String? hintText;
  final String? errorText;
  final bool isRequired;
  final bool obscureText;
  final TextInputType textType;
  final Function(String?)? validator;
  final Function(String?)? onSaved;
  final List<TextInputFormatter>? inputFormatters;

  const TextInputField({
    Key? key,
    this.inputFormatters,
    this.title,
    this.textType = TextInputType.text,
    this.controller,
    this.isRequired = true,
    this.validator,
    this.hintText,
    this.onSaved,
    this.obscureText = false,
    this.errorText,
  }) : super(key: key);

  @override
  State<TextInputField> createState() => _TextInputFieldState();
}

class _TextInputFieldState extends State<TextInputField> {

  late TextEditingController textController = widget.controller ?? TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [


        if (widget.title != null) ...[

          RichText(
            text: TextSpan(
              style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w300, fontSize: 16),
              children: [
                TextSpan(text: widget.title),
                widget.isRequired ? const TextSpan(text: '*') : const TextSpan(text: '')
              ],
            ),
          ),

          const SizedBox(height: 8),

        ],


        TextFormField(
          onSaved: widget.onSaved,
          inputFormatters: widget.inputFormatters,
          validator: widget.isRequired
              ? (value) {
                  if (widget.validator != null) {
                    return widget.validator!(value);
                  }
                  return null;
                }
              : null,
          controller: textController,
          keyboardType: widget.textType,
          onChanged: (_) { },
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color.fromRGBO(31, 31, 33, 1),
            contentPadding: const EdgeInsets.symmetric(horizontal: 21, vertical: 18),
            hintText: widget.hintText,
            hintStyle: const TextStyle(
                color: Color.fromRGBO(217, 217, 217, 1),
                fontSize: 20,
            ),
            suffixIcon: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                textController.text.isNotEmpty
                    ? IconButton(
                        iconSize: 24,
                        color: const Color.fromRGBO(116, 116, 116, 1),
                        icon: const Icon(Icons.clear, color: Colors.black),
                        onPressed: () {
                          textController.clear();
                          setState(() {});
                        },
                      )
                    : const SizedBox.shrink(),
              ],
            ),
            isDense: true,
            errorStyle: const TextStyle(fontSize: 16),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                width: 1,
                color: Colors.black,
              ),
              borderRadius: BorderRadius.circular(50.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                width: 1,
                color: Colors.black,
              ),
              borderRadius: BorderRadius.circular(50.0),
            ),
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.red, width: 1),
              borderRadius: BorderRadius.circular(50.0),
            ),
            errorText: widget.errorText),
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
        ),

      ],
    );
  }
}
