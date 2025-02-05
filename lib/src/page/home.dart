import 'package:efc_crc_app/src/class/materia.dart';
import 'package:efc_crc_app/src/widget/carsFormat.dart';
import 'package:efc_crc_app/src/widget/drawerApp.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Materia> _materiasBasico = [
    Materia(
        "Escatologia", "INF escatologia", "Olga Quintero", "2012", "APROVADA"),
    Materia("Angeologia", "InfoMateria", "Enrique Cañon", "2021", "PENDIENTE"),
    Materia(
        "Hermeneutica", "InfoMateria", "Elena Monzalve", "2020", "REPROVADA"),
    Materia("Noviasgo y matrimonio", "InfoMateria", "Maestro", "AnoDictada",
        "APROVADA")
  ];
  List<Materia> _materiaIntermedio = [
    Materia("nombreMateria", "InfoMateria", "Maestro", "AnoDictada", "Estado"),

  ];

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
            }, icon: Icon(Icons.menu));
          },),
        // leading: const Icon(Icons.menu),
        title: Center(
            child: Text(
          "MATERIAS",
          style: TextStyle(color: Colors.white),
        )),
      ),
      body: CustomScrollView(
        slivers:[
          SliverToBoxAdapter(
            child:Padding(padding: const EdgeInsets.all(16.0),
            child: Text("BASICO",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),) ,
          ),
          SliverList(delegate: SliverChildBuilderDelegate(
            (context,index){
              return CardFormat(
              nombreMateria: _materiasBasico[index].nombreMateria,
              infoMateria: _materiasBasico[index].InfoMateria,
              estadoMateria: _materiasBasico[index].Estado,
              anoDictada: _materiasBasico[index].AnoDictada,
              maestro: _materiasBasico[index].Maestro,
            );
          },
          childCount: _materiasBasico.length,
          
          )
          ),
          //SECION INTERMEDIO
          SliverToBoxAdapter(
            child: Padding(padding: const EdgeInsets.all(16.0),
            child: Text("INTERMEDIO",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), ),),
          ),
          SliverList(delegate: SliverChildBuilderDelegate(
            (context,index){
              return CardFormat(
              nombreMateria: _materiaIntermedio[index].nombreMateria,
              infoMateria: _materiaIntermedio[index].InfoMateria,
              estadoMateria: _materiaIntermedio[index].Estado,
              anoDictada: _materiaIntermedio[index].AnoDictada,
              maestro: _materiaIntermedio[index].Maestro,
            );
            },
            childCount: _materiaIntermedio.length,
          ))
          /* Column(
          children: [Text("data"),
            ListView.builder(
                        itemCount: _materiasBasico.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
            
            CardFormat(
              nombreMateria: _materiasBasico[index].nombreMateria,
              infoMateria: _materiasBasico[index].InfoMateria,
              estadoMateria: _materiasBasico[index].Estado,
              anoDictada: _materiasBasico[index].AnoDictada,
              maestro: _materiasBasico[index].Maestro,
            ),
                            ],
                          );
                        }),
          ],
        ),*/
         ]
      ),
      drawer: Drawer_App(),
    );
  }
}

