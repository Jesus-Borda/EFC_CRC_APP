import 'package:flutter/material.dart';
import 'package:flutter_repase/src/page/descriptionMateria.dart';


class CardFormat extends StatelessWidget {
  final String nombreMateria;
  final String infoMateria;
  final String estadoMateria;
  final String maestro;
  final String anoDictada;



 const CardFormat({super.key,  required this.nombreMateria, required this.infoMateria,   required this.estadoMateria, required this.maestro, required this.anoDictada,   });
  
  @override
  Widget build(BuildContext context) {
  
    
    return Padding(padding: const EdgeInsets.all(2.0) ,
          child:  
              Card(
              
                child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: ListTile(
                  leading: 
                  Icon(_getIconForEstado(estadoMateria!),
                  color: getColorForEstado(estadoMateria!),),
                  title: Text(nombreMateria,style: TextStyle(fontSize: 20),),
                  subtitle: Text(estadoMateria!),
                 /* onLongPress: () {
                  Navigator.of(context).push(MaterialPageRoute<Null>(
                    builder: (BuildContext context){
                      return Descriptionmateria(NombreMateria: nombreMateria, InfoMateria: infoMateria, EstadoMateria: estadoMateria, Maestro: maestro, AnoDictada: anoDictada,);
                    })
                    );
                },*/
                onLongPress: () {
                  Navigator.pushReplacementNamed(context, '/DescriptionMateria', arguments: {
                    'NombreMateria': '$nombreMateria',
                    'EstadoMateria': '$estadoMateria',
                    'InfoMateria': '$infoMateria',
                    'Maestro': '$maestro',
                    'AnoDictada': '$anoDictada',
                    
                  });
                },
                ),
              ),)
            
    
    );
  }
}
IconData _getIconForEstado (String estado){
  switch (estado) {
    case "APROVADA":
      return Icons.check;
    case "REPROVADA":
      return Icons.cancel;
    case "PENDIENTE":
      return Icons.priority_high;    
    default:
    return Icons.help;
  }
}
 Color getColorForEstado(String estado) {
    switch (estado) {
      case "APROVADA":
        return Colors.green;
      case "REPROVADA":
        return Colors.red;
      case "PENDIENTE":
        return Colors.orange;
      default:
        return Colors.grey; // Color para estados desconocidos
    }
  }