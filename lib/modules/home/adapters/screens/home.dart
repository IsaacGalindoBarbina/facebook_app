import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Facebook', style: TextStyle(color: Colors.blue)),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.plus_one, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search_outlined, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.message_outlined, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Icon(Icons.account_circle, size: 50.0),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: SizedBox(
                      width: 350, // Set the width you want
                      height: 50, // Set the height you want
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(),
                          labelText: 'Search in your pins',
                          labelStyle: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Icon(Icons.image, size: 50.0),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                for (var i = 0; i < 9; i++)
                  Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Card(
                      color: Colors.white,
                      child: Container(
                        width: 145,
                        height: 200,
                        // Puedes personalizar el contenido de la tarjeta aquí
                        child: Center(
                          child: Text(
                            'Usuario $i',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
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
                      Text('Rodrigo Dorantes',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
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
                      Text('Rodrigo Dorantes',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
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
                      Text('Rodrigo Dorantes',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
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
                      Text('Rodrigo Dorantes',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
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
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                for (var i = 0; i < 9; i++)
                  Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Card(
                      color: Colors.white,
                      child: Container(
                        width: 145,
                        height: 200,
                        // Puedes personalizar el contenido de la tarjeta aquí
                        child: Center(
                          child: Text(
                            'Usuario $i',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
      ),
    );
  }
}
