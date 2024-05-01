import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicia Sesion'),
      ),
      body: Column(children: [
        Text(
          'Agregar Id:___________________',
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
        Text(
          'Agregar C_Postal:_____________',
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
        Text(
          'Agregar Colonia:______________',
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
        Text(
          'Agregar Calle:________________',
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
        Text(
          'Agregar Num_Int:______________',
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
        Text(
          'Agregar Num_Ext:______________',
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
        Text(
          'Agregar Telefono:______________',
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
        Text(
          'Agregar Propietario:____________',
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
      ]),
    );
  }
}
