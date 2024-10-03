import 'package:flutter/material.dart';
import 'package:saffco/util/button.dart';
import 'package:saffco/util/inputbox.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //logo
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Center(
                  child: Image.asset('assets/images/logo.png',
                      height: 200, width: 200)),
            ),
            // title
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sign In',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  // subtitle
                  Text(
                    'Please  signin your register',
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                  Text(
                    'account',
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // Placeholder for input boxes,
            const Inputbox(hint: 'Email', icon: Icons.email),
            const Inputbox(hint: 'Password', icon: Icons.password),
            const SizedBox(
              height: 10,
            ),
            //button
            MyButton(
              text: 'SIGN IN',
              onTap: () {
                Navigator.pushNamed(context, '/password');
              },
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 48),
              child: Row(
                children: [
                  Text('Forget Your Password? '),
                  Text(
                    'Reset Here',
                    style: TextStyle(
                      color: Color(0xFFFC2E20),
                      decoration: TextDecoration.underline,
                      decorationColor: Color(0xFFFC2E20),
                    ),
                  )
                ],
              ),
            ),

            const Padding(
              padding: EdgeInsets.symmetric(vertical: 80),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don’t have a account ? '),
                  Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Color(0xFFFC2E20),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
