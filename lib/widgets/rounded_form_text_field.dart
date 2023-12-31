import 'package:flutter/material.dart';

class RoundedFormTextField extends StatelessWidget {
  final IconData prefixIcon;
  final String hintText;
  final bool obscureText;

  const RoundedFormTextField({
    super.key,
    required this.prefixIcon,
    required this.hintText,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(67, 71, 77, 0.08),
            spreadRadius: 10,
            blurRadius: 40,
            offset: Offset(0, 12),
          ),
        ],
      ),
      child: Center(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(100),
            ),
          ),
          child: TextFormField(
            obscureText: obscureText,
            decoration: InputDecoration(
              prefixIcon: Icon(
                prefixIcon,
                color: Colors.blue,
              ),
              border: const OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              hintText: hintText,
              hintStyle: const TextStyle(
                fontSize: 10,
                color: Color.fromRGBO(131, 143, 160, 100),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
