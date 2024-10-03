import 'package:flutter/material.dart';

class Inputbox extends StatelessWidget {
  final IconData icon;
  final String hint;

  const Inputbox({super.key, required this.hint, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                icon,
                color: const Color(0xFFA9A7A7),
              ),
              hintText: hint,
              hintStyle: const TextStyle(
                color: Color(0xFFA9A7A7),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  color: Color(0xFFA9A7A7),
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFFA9A7A7),
                  width: 2.0,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
