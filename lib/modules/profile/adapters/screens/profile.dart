import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Isaac Jacobo', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.edit_outlined, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfileHeader(),
          ],
        ),
      ),
    );
  }
}

class ProfileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          height: 200,
          decoration: const BoxDecoration(
            color: Colors.grey,
            image: DecorationImage(
              image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8BMfk7zAcAyweY3K7st8JvZ-_ji9Sk8mpMQ&usqp=CAU'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Divider(height: 10,),
        Center(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center, // Asegura que el Icono esté centrado en el CircleAvatar
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.blue,
                  ),
                  Icon(Icons.person, size: 50, color: Colors.white),
                ],
              ),
              SizedBox(height: 16),
              Text(
                'Isaac Jacobo',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center, // Centra el texto
              ),
            ],
          ),
        ),
        Divider(height: 10,),
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
                  Icon(Icons.more_horiz), // Cambia esto al ícono que prefieras
              style: ElevatedButton.styleFrom(
                fixedSize: Size(50, 25), // Cambia esto al tamaño que prefieras
              ),
            ),
          ],
        ),
        Divider(
          height: 20,
        ),
        Card(
          child: Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.home),
                    SizedBox(width: 10), // Espacio entre el icono y el texto
                    Text('Casa - En  conjunto'),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.location_on),
                    SizedBox(width: 10), // Espacio entre el icono y el texto
                    Text('ubicacion - Actualmente vivie en morelos'),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.work_outlined),
                    SizedBox(width: 10), // Espacio entre el icono y el texto
                    Text('Trabajo - Trabaja en Tesla Software Solutions'),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.heat_pump_rounded),
                    SizedBox(width: 10), // Espacio entre el icono y el texto
                    Text('Soltero - buscando una relacion nueva'),
                  ],
                ),
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center, // Centrar el botón
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text('edit detalles de publicacion'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(300, 40), // Cambiar el tamaño del botón
              ),
            ),
          ],
        ),
        const Divider(
          height: 10,
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
                    Text('Isaac Galindo',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    Text('20 min.',
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
                  icon: Icon(Icons.more_horiz),
                  onPressed: () {
                    // Acción al presionar los tres puntos
                  },
                ),
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    // Acción al presionar el icono de tache
                  },
                ),
              ],
            ),
          ],
        ),
        Column(
          children: [
            Container(
              width: double.infinity,
              height: 300.0,
              color: Colors.grey,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.thumb_up),
                      onPressed: () {},
                    ),
                    Text('Me gusta'),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.chat_bubble_outline),
                      onPressed: () {},
                    ),
                    Text('Comentar'),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.share),
                      onPressed: () {},
                    ),
                    Text('Compartir'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    ));
  }
}
