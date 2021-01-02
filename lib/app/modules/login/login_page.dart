import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_controller.dart';

class LoginPage extends GetWidget<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Center(
          child: Container(
            //color: Colors.red,
            //height: Get.height - 100,
            child: Column(
              children: [
                Container(
                  height: 200,
                  child: _header(),
                ),
                Expanded(
                  flex: 2,
                  child: _inputs(),
                ),
                Expanded(
                  flex: 1,
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: _loginButton(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _header() {
    return Column(
      children: [
        FlutterLogo(
          size: 100,
        ),
        SizedBox(height: 10),
        Text(
          'Chat Firebase',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 30),
        Text(
          'Inicio de sesión',
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _inputs() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              filled: true,
              hintText: 'Ingrese su correo electrónico',
              prefixIcon: Icon(CupertinoIcons.mail),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 0.5,
                  color: Colors.blue,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 0.5,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              filled: true,
              hintText: 'Ingrese su contraseña',
              prefixIcon: Icon(CupertinoIcons.lock),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 0.5,
                  color: Colors.blue,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 0.5,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _loginButton() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: CupertinoButton(
        child: Text('Iniciar sesión'),
        color: Colors.blue,
        onPressed: () {},
      ),
    );
  }
}
