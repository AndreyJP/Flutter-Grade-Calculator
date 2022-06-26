import 'package:calculador_de_notas/components/app_bar.dart';
import 'package:calculador_de_notas/components/elevated_button.dart';
import 'package:calculador_de_notas/components/form_text_field.dart';
import 'package:calculador_de_notas/controller/login_controller.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController userController = TextEditingController();
  TextEditingController passwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Entrar no sistema',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w400,
              fontFamily: 'Helvetica',
            ),
          ),
          FormTextField(
            labelText: 'Usuário',
            hintText: 'Entre com seu usuário',
            obscureText: false,
            textController: userController,
          ),
          FormTextField(
            labelText: 'Senha',
            hintText: '********',
            obscureText: true,
            textController: passwdController,
          ),
          buttonSubmit(
            (){
              LoginController.instance.login(userController.text, passwdController.text, context);
            },
            'Login',
            Colors.cyan,
            15,
          ),
        ],
      ),
    );
  }
}
