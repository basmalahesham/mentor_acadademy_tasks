import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.obscureText = false,
    required this.hintText,
    required this.validator,
  });

  final bool obscureText;
  final String hintText;
  final String? Function(String?) validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.yellow,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.yellow,
          ),
        ),
      ),
    );
  }
}
//(value) {
//         if (value == null || value.isEmpty) {
//           return 'please enter your password';
//         }
//         if (value.length <= 6) {
//           return 'password must be at least 6 characters';
//         }
//         return null;
//       }
