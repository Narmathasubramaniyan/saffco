import 'package:flutter/material.dart';
import 'package:saffco/util/button.dart';
import 'package:saffco/util/inputbox.dart';

class PasswordPage extends StatelessWidget {
  const PasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 100, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Icon
              IconButton(
                icon: const Icon(
                  Icons.arrow_circle_left_outlined,
                  size: 50,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              const SizedBox(
                height: 25,
              ),
              // Text
              const Center(
                child: Text(
                  'New Password',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              const Center(
                child: Text(
                  'Your new password must be',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
              ),
              const Center(
                child: Text(
                  'different from previously used passwords',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
              ),

              const SizedBox(
                height: 40,
              ),
              // Input
              const Inputbox(hint: 'Password', icon: Icons.password),
              const Inputbox(hint: 'Confirm Password', icon: Icons.password),
              const SizedBox(
                height: 70,
              ),
              // Button
              MyButton(
                  text: 'Create new password',
                  onTap: () {
                    Navigator.pushNamed(context, '/create_account');
                  })
            ],
          ),
        ),
      ),
    );
  }
}
