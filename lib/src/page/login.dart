import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Container(
          child: Center(
            child: Column(
              children: [
                //Expanded(child: Container(),),
                Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "LOGIN",
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CircleAvatar(
                        radius: 80,
                        child: Icon(
                          Icons.person,
                          size: 48,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Column(
                    children: [
                      const Text(
                        "Usuario",
                      ),
                      ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: 300),
                          child: TextFormField()),
                      Text("Contraseña"),
                      ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: 300),
                          child: TextFormField()),
                    ],
                  ),
                ),

                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          
                        },
                        child: Text("¿Olvidaste tu contraseña?")),
                      SizedBox(
                        height: 10,
                      ),
                      InkWell
                      (child: Text("No tienes cuenta. Crea una aqui."),
                      onTap: () {
                        
                      },),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, '/Home');
                            },
                            child: Text(
                              "Iniciar secion",
                              style: TextStyle(fontSize: 25),
                            )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
