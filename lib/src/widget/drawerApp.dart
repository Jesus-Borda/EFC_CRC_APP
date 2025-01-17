import 'package:efc_crc_app/src/page/home.dart';
import 'package:efc_crc_app/src/page/usuarioDescription.dart';
import 'package:flutter/material.dart';


class Drawer_App extends StatelessWidget {
  const Drawer_App({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
        const   DrawerHeader(
            decoration:
                BoxDecoration(color: const Color.fromARGB(255, 221, 74, 63)),
            child: CircleAvatar(radius: 80,
            backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9YoHg5fWf2QKRvSViKom2ahzaV7thiGjNsw&s')),
          ),
          ListTile(
            title: Text("Home"),
            leading: Icon(Icons.home),
            onTap: () {
             Navigator.of(context).push(MaterialPageRoute<Null>(
                    builder: (BuildContext context){
                      return Home();
                    })
                    );
            },
          ),
          ListTile(
            title: Text("Usuario"),
            leading: Icon(Icons.person),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute<Null>(
                    builder: (BuildContext context){
                      return UserDescription();
                    })
                    );;
            },
            
          ),
        ],
      ),
    );
  }
}
