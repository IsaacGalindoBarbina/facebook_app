import 'package:flutter/material.dart';

class Pages extends StatelessWidget{
  const Pages ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfileHeader(),
            //TweetList(),
          ],
        ),
      ),
    );
  }
}

class ProfileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 250,
          decoration: const BoxDecoration(
            color: Colors.grey,
          ),
          child: Stack(
            alignment: Alignment.topCenter, // Agregado para mover el TextField hasta arriba y al centro
            children: [
              Padding(
                padding: EdgeInsets.all(15.0),
                child: SizedBox(
                  width: 500, // Reducido para hacer el TextField más pequeño
                  height: 40, // Reducido para hacer el TextField más pequeño
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(),
                      labelText: 'Search in your pins',
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Divider(height: 10,),
              
            ],
          ),
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 30.0,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Isaac Suku',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      Text('10 min.',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal)),
                              
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.thumb_up),
                    onPressed: () {
                      // Acción al presionar los tres puntos
                    },
                  ),
                  
                ],
              ),
            ],
          ),
          Row(
          children: [
            Expanded(
              child: ElevatedButton(
                  onPressed: () {}, child: Text('Agregar historia'),),
            ),
            SizedBox(width: 10),
            // Espacio entre los botones
            ElevatedButton(
              onPressed: () {},
              child:
                  Icon(Icons.messenger_outline), // Cambia esto al ícono que prefieras
              style: ElevatedButton.styleFrom(
                fixedSize: Size(25, 15), // Cambia esto al tamaño que prefieras
              ),
            ),
            SizedBox(width: 10),
            ElevatedButton(
              onPressed: () {},
              child:
                  Icon(Icons.more_horiz), // Cambia esto al ícono que prefieras
              style: ElevatedButton.styleFrom(
                fixedSize: Size(50, 25), // Cambia esto al tamaño que prefieras
              ),
            ),
            
          ],
        ),
        Divider(height: 20,),

        Card(
          child: Container(
            child: Column(
              children: [
                Row(
                  children: [ // Espacio entre el icono y el texto
                    Text('About'),
                    SizedBox(width: 330,),
                    Icon(Icons.facebook_outlined),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.facebook_outlined),
                    SizedBox(width: 10), // Espacio entre el icono y el texto
                    Text('Link en la descripcion'),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.phone_android_outlined),
                    SizedBox(width: 10), // Espacio entre el icono y el texto
                    Text('this is my number'),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.file_copy_outlined),
                    SizedBox(width: 10), // Espacio entre el icono y el texto
                    Text('Public figure'),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.message_outlined),
                    SizedBox(width: 10), // Espacio entre el icono y el texto
                    Text('Send me message'),
                  ],
                ),
              ],
            ),
          ),
        ),

      ],
    );
  }
}