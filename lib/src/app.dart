import 'package:flutter/material.dart';
import 'package:flutter_repase/src/page/index.dart';



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
