import 'package:code_masters/get_started/register_home.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Image.asset(
                'assets/CodeMastersLogo.png',
                width: 40,
                height: 40,
              ),
            ),
            Text('Login'),
          ],
        ),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RegisterHome()));
            },
            child: Text('Sign Up'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 73, 96, 229),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Color.fromARGB(
          255, 193, 201, 247), // Cambia el color de fondo de la pantalla aquí
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(12.0),
          // Espacio alrededor del contenido
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 150, // Ancho deseado
                    height: 150, // Alto deseado
                    child: Image.asset(
                      'assets/CodeMastersLogo.png',
                      fit: BoxFit
                          .contain, // Ajusta la imagen dentro del Container
                    ),
                  )
                ],
              ),
              SizedBox(height: 40),
              Padding(
                padding: EdgeInsets.all(30.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white, // Fondo blanco
                    borderRadius:
                        BorderRadius.circular(20.0), // Borde redondeado
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        SizedBox(height: 40),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Email',
                            icon: Icon(Icons.email),
                          ),
                        ),
                        SizedBox(height: 16.0),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
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
                ),
              ),
              Text("Dont’ have an account? Sign up")
            ],
          ),
        ),
      ),
    );
  }
}
