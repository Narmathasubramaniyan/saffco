import 'package:flutter/material.dart';
import 'package:saffco/util/button.dart';
import 'package:saffco/util/inputbox.dart';

class CreateAccPage extends StatelessWidget {
  const CreateAccPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // logo
              Center(
                child: Image.asset(
                  'assets/images/logo.png',
                  height: 200,
                  width: 200,
                ),
              ),
              // title
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Create Account',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    // subtitle
                    Text(
                      'Fill your information below ',
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              // Input boxes
              const Inputbox(hint: 'Name', icon: Icons.person),
              const Inputbox(hint: 'Email', icon: Icons.email),
              const Inputbox(hint: 'Password', icon: Icons.password),
              const Inputbox(hint: 'Phone', icon: Icons.phone),
              const SizedBox(height: 5),
              // button
              MyButton(
                text: 'SIGN IN',
                onTap: () {
                  Navigator.pushNamed(context, '/');
                },
              ),
              const SizedBox(height: 5),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account ? '),
                    Text(
                      'Sign in ',
                      style: TextStyle(
                        color: Color(0xFFFC2E20),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
