import 'package:flutter/material.dart';

class RegisterHome extends StatelessWidget {
  RegisterHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio de Sesión'),
        actions: <Widget>[
          IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.search)
          ),
          ElevatedButton(
            onPressed: () {
            },
            child: Text('Log In'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 1, 2, 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Lógica de inicio de sesión aquí
            },
            child: Text('Iniciar Sesión'),
            style: ElevatedButton.styleFrom(
              backgroundColor:  Color.fromARGB(255, 73, 96, 229),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
          PopupMenuButton<String>(
            onSelected: (value) {
              // Aquí puedes agregar la lógica para manejar las opciones del menú
              if (value == 'opcion1') {
                // Realiza una acción para la opción 1
              } else if (value == 'opcion2') {
                // Realiza una acción para la opción 2
              }
            },
            itemBuilder: (BuildContext context) {
              return <PopupMenuEntry<String>>[
                PopupMenuItem<String>(
                  value: 'opcion1',
                  child: Text('Opción 1'),
                ),
                PopupMenuItem<String>(
                  value: 'opcion2',
                  child: Text('Opción 2'),
                ),
              ];
            },
          ),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 193, 201, 247), // Cambia el color de fondo de la pantalla aquí
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0), // Espacio alrededor del contenido
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min, 
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.add_box),
                ],
              ),
              SizedBox(height: 40),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white, // Fondo blanco
                  borderRadius: BorderRadius.circular(20.0), // Borde redondeado
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min, 
                  children: <Widget>[
                    SizedBox(height: 40),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        icon: Icon(Icons.person),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Password',
                        icon: Icon(Icons.lock),
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 24.0),
                    Text(
                      'Forgot password?',
                      style: TextStyle(
                        color: Colors.indigo,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 30.0),
                    ElevatedButton(
                      onPressed: () {
                        // Lógica de inicio de sesión aquí
                      },
                      child: Text('Log In'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 7, 11, 67),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 20)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
