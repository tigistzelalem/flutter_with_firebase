import 'package:flutter/material.dart';

class UserRegister extends StatefulWidget {
  const UserRegister({Key? key}) : super(key: key);

  @override
  State<UserRegister> createState() => _UserRegisterState();
}

class _UserRegisterState extends State<UserRegister> {
  late final TextEditingController email;
  late final TextEditingController password;

  @override
  void initState() {
    email = TextEditingController();
    password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter App'),
      ),
        body: Column(children: [
      TextField(
        controller: email,
        decoration: const InputDecoration(hintText: 'enter your email'),
      ),
      TextField(
        controller: password,
        decoration: const InputDecoration(hintText: 'enter your password'),
        autocorrect: false,
      ),
      TextButton(
        onPressed: () async {
        //  final email = email.text
        //  final password = password.text
        

        },
        child: const Text('Register'),
      ),
    ]));
  }
}
