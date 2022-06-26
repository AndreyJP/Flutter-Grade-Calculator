import 'package:calculador_de_notas/components/alert_dialog.dart';
import 'package:flutter/material.dart';

class LoginController {
  static final LoginController instance = LoginController();

  void login(String user, String passwd, BuildContext context) {
    if (user == 'admin' && passwd == 'master') {
      Navigator.of(context).pushReplacementNamed('/notes');
    } else {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return alert(context, 'Login Inválido',
                'Verifique o usuário e senha informados');
          });
    }
  }
}
