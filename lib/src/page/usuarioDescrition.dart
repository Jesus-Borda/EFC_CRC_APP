import 'package:flutter/material.dart';
import 'package:flutter_repase/src/class/usuario.dart';
import 'package:flutter_repase/src/widget/drawerApp.dart';


class UserDescription extends StatelessWidget {
   UserDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 221, 74, 63),
        automaticallyImplyLeading: false,
        leading: Builder(
          builder: (context) {
            return IconButton(onPressed: () {
              Scaffold.of(context).openDrawer();
            }, icon: const Icon(Icons.menu));
          },),
        // leading: const Icon(Icons.menu),
        title: const Center(
            child: Text(
          "Usuario",
          style: TextStyle(color: Colors.white),
        )),
      ),
      body: Container(
        child: Column(
          children: [
            const SizedBox(height: 25),
            Container(
              child: const CircleAvatar(
                child: Icon(Icons.person,size: 80,),
                radius: 90,
              ),
            ),
            Container(
              child: const Column(
                children: [
                  SizedBox(height: 15,),
                  Center(child: Text("BIENVENIDO JESUS")),
                  SizedBox(height: 25,),
                  
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Text("Nombres:"),
                      SizedBox(width: 10),
                      Text("JESUS ARMANDO")],
                      
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 15,),
                        Text("Apellidos:"),
                        SizedBox(width: 10),
                        Text("BORDA JIMENEZ")
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Tel Celular:"),
                        SizedBox(width: 10),
                        Text("3008571330")
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Correo"),
                        SizedBox(width: 10),
                        Text("bordajimenezjesus@gmail.com")
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Direccion"),
                        SizedBox(width: 10),
                        Text("Diagonal 129 b # 85 13")
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Tipo de Usuario"),
                        const SizedBox(width: 10),
                        Text("ESTUDIANTE")
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Estado Cuenta"),
                        SizedBox(width: 10),
                        Text("INACTIVO")
                      ],
                    )

                  
                ],
              ),
            )
          ],
        ),
      ),
      drawer: const Drawer_App(),
    );
  }


  
}