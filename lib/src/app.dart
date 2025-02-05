import 'package:efc_crc_app/src/page/descriptionMateria.dart';
import 'package:efc_crc_app/src/page/home.dart';
import 'package:efc_crc_app/src/page/login.dart';
import 'package:efc_crc_app/src/page/usuarioDescription.dart';
import 'package:flutter/material.dart';




class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':(context)=> Login(),
        '/Home':(context)=>Home(),
        '/User':(context)=>UserDescription(),
       //'/DescriptionMateria': (context) => Descriptionmateria( ),
        
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/DescriptionMateria') {
          //VERIFICA QUE LOS ARGUMENTOS SEAN DEL TIPO ESPERADO
          final args = settings.arguments as Map<String, dynamic>;
          if (args != null) {
            return MaterialPageRoute(
              builder: (context)=>Descriptionmateria(
                NombreMateria: args['NombreMateria'], 
                EstadoMateria: args['EstadoMateria'],
                InfoMateria: args['InfoMateria'],
                Maestro: args['Maestro'], 
                AnoDictada: args['AnoDictada'],
                ),
              );
          }
          /*MANEJA EL CASO DE ARGUMENTOS INVALIDOS O FALTANTES
          return MaterialPageRoute(
            builder: context => Erro)*/
        }

      },
    );
  }
  
}
