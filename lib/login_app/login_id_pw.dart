import 'package:flutter/material.dart';
import 'package:login_dice/dice.dart';


bool emailField = true;

class LoginIdPw extends StatefulWidget {
  const LoginIdPw({Key? key}) : super(key: key);

  @override
  State<LoginIdPw> createState() => _LoginIdPwState();
}

class _LoginIdPwState extends State<LoginIdPw> {
  final TextEditingController _idTextController = TextEditingController();
  final TextEditingController _pwTextController = TextEditingController();


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Log in'),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
        actions: <Widget>[
          IconButton(icon: const Icon(Icons.search), onPressed: () {})
        ],
      ),
      body: _BuildBody(
        idTextController: _idTextController,
        pwTextController: _pwTextController,
      ),
    );
  }
}


class _BuildBody extends StatefulWidget {
  const _BuildBody({
    Key? key,
    required TextEditingController idTextController,
    required TextEditingController pwTextController,
  })
      : _idTextController = idTextController,
        _pwTextController = pwTextController,
        super(key: key);

  final TextEditingController _idTextController;
  final TextEditingController _pwTextController;

  @override
  State<_BuildBody> createState() => _BuildBodyState();
}

class _BuildBodyState extends State<_BuildBody> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: SingleChildScrollView(
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          children: [
            const Padding(padding: EdgeInsets.only(top: 50.0)),
            const Center(
              child: Image(
                image: AssetImage('image/chef.gif'),
                width: 170.0,
                height: 190.0,
              ),
            ),
            Form(
              child: Theme(
                data: ThemeData(
                  primaryColor: Colors.teal,
                  inputDecorationTheme: const InputDecorationTheme(
                    labelStyle: TextStyle(
                      color: Colors.teal,
                      fontSize: 15.0,
                    ),
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.all(40.0),
                  child: Column(
                    children: [
                      if(emailField)
                        TextFormField(
                          autofocus: true,
                          // controller: widget._idTextController,
                          decoration: const InputDecoration(
                            labelText: 'Enter "dice"',
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      TextFormField(
                        // controller: widget._pwTextController,
                        decoration: const InputDecoration(
                          labelText: 'Enter password',
                        ),
                        keyboardType: TextInputType.text,
                        // obscureText: true,
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            emailField = false;
                          });
                          // if (_idTextController.text == 'dice' &&
                          //     _pwTextController.text == '1234') {
                          //   debugPrint('ok');
                          //   showSnackBar(context, '로그인 성공');
                          //   Navigator.push(
                          //       context,
                          //       MaterialPageRoute(
                          //           builder: (context) => const Dice()));
                          // } else {
                          //   debugPrint('failed');
                          //   showSnackBar(context, '아이디 또는 비밀번호가 틀립니다');
                          // }
                          // _idTextController.clear();
                          // _pwTextController.clear();
                        },
                        child: const Icon(
                          Icons.arrow_forward,
                          size: 35.0,
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orangeAccent,
                            minimumSize: const Size(100, 50)),

                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void showSnackBar(BuildContext context, String msg) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        msg,
        textAlign: TextAlign.center,
      ),
      duration: const Duration(seconds: 3),
      backgroundColor: Colors.blueAccent,
    ),
  );
}
