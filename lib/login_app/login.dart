import 'package:flutter/material.dart';
import 'package:login_dice/my_button/my_button.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text(
          'Log in',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: _buildButton(),
    );
  }

  Widget _buildButton() {
    const _space = SizedBox(
      height: 16.0,
    );

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyButton(
            image: Image.asset('image/glogo.png'),
            radius: 16,
            text: const Text(
              'Login with Google',
              style: TextStyle(color: Colors.black87, fontSize: 16.0),
            ),
            backgroundColor: Colors.white,
            onPressed: () { debugPrint('Login with Google'); },
          ),
          _space,
          MyButton(
            image: Image.asset('image/flogo.png'),
            radius: 16,
            text: const Text(
              'Login with Facebook',
              style: TextStyle(color: Colors.white, fontSize: 16.0),
            ),
            backgroundColor: const Color(0xFF334D92),
            onPressed: () { debugPrint('Login with Facebook'); },
          ),
          _space,
          MyButton(
            image: const Icon(Icons.mail, color: Colors.white),
            radius: 16,
            text: const Text(
              'Login with Email',
              style: TextStyle(color: Colors.white, fontSize: 16.0),
            ),
            backgroundColor: Colors.green,
            onPressed: () { debugPrint('Login with Email'); },
          ),
        ],
      ),
    );
  }
}
