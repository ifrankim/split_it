import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("Divida contas com seus amigos"),
          Column(
            children: [
              ListTile(
                leading: Icon(Icons.sim_card),
                title: Text("Faça seu login com as contas abaixo"),
              ),
              SizedBox(
                height: 32,
              ),
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.email),
                  label: Text("Entrat com Google")),
              SizedBox(
                height: 12,
              ),
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.email),
                  label: Text("Entrat com Apple"))
            ],
          ),
        ],
      ),
    );
  }
}
