import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../services/ui/theme_data.dart';

class TextInputField extends StatefulWidget {

  final TextEditingController? controller;
  final String title;
  final String? hintText;
  final String? errorText;
  final bool isRequired;
  final bool obscureText;
  final TextInputType textType;
  final Function(String?)? validator;
  final Function(String?)? onSaved;
  final List<TextInputFormatter>? inputFormatters;

  TextInputField({
    Key? key,
    this.inputFormatters,
    required this.title,
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
        RichText(
          text: TextSpan(
            style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w300,
                fontSize: 16
            ),
            children: [
              TextSpan(text: widget.title),
              widget.isRequired
                  ? const TextSpan(text: '*')
                  : const TextSpan(text: '')
            ],
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          onSaved: widget.onSaved,
          inputFormatters: widget.inputFormatters,
          validator: widget.isRequired ? (value) {
              if (widget.validator != null) {
                  return widget.validator!(value);
              }
            return null;
          } : null,
          controller: textController,
          keyboardType: widget.textType,
          onChanged: (_) { setState(() {}); },
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            hintText: widget.hintText,
            hintStyle: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w400
            ),
            suffixIcon: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                textController.text.isNotEmpty
                  ? IconButton(
                      iconSize: 24,
                      color: const Color.fromRGBO(116, 116, 116, 1),
                      icon: const Icon(Icons.clear, color: AppThemeData.primary),
                      onPressed: () {
                        textController.clear();
                        setState(() {});
                      },
                    )
                  : const SizedBox(),
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
            errorText: widget.errorText
          ),
          style: const TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.w400
          ),
        ),
      ],
    );
  }
}