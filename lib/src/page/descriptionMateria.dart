import 'package:flutter/material.dart';
import 'package:flutter_repase/src/widget/cardFormat.dart';
import 'package:flutter_repase/src/widget/drawerApp.dart';

class Descriptionmateria extends StatelessWidget {
  final String NombreMateria;
  final String Maestro;
  final String InfoMateria;
  final String EstadoMateria;
  final String AnoDictada;

  Descriptionmateria({
    super.key,
    required this.InfoMateria,
    required this.NombreMateria,
    required this.Maestro,
    required this.EstadoMateria,
    required this.AnoDictada,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         leading: Builder(
          builder: (context) {
            return IconButton(onPressed: () {
              Scaffold.of(context).openDrawer();
            }, icon: Icon(Icons.menu));
          },),
        automaticallyImplyLeading: false,
        title: Row(
          children: [Center(child: Text(NombreMateria))],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Center(
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                      decoration: BoxDecoration(color: getColorForEstado(EstadoMateria)),
                      child: Expanded(
                        child: Row(),
                      )),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    child: Center(
                      child: Center(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8.0,40,8.0,8.0),
                              child: Text("MAESTRO: $Maestro"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Año dicatada $AnoDictada"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Estado: $EstadoMateria"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(InfoMateria!),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      drawer: Drawer_App(),
    );
  }
}
