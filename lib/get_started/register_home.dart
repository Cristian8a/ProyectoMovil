import 'package:code_masters/get_started/login_home.dart';
import 'package:flutter/material.dart';

class RegisterHome extends StatelessWidget {
  RegisterHome({super.key});

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
            Text('Sign Up'),
          ],
        ),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Text('Log in'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 7, 11, 67),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 193, 201, 247),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(12.0),
          // Espacio alrededor del contenido
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 100, // Ancho deseado
                    height: 100, // Alto deseado
                    child: Image.asset(
                      'assets/CodeMastersLogo.png',
                      fit: BoxFit
                          .contain, // Ajusta la imagen dentro del Container
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Welcome to the ultimate coding ",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "community ( ͡° ͜ʖ ͡ -)",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(height: 10),
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
                        SizedBox(height: 10),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Display Name',
                            icon: Icon(Icons.person),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Email',
                            icon: Icon(Icons.email),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Password',
                            icon: Icon(Icons.lock),
                          ),
                          obscureText: true,
                        ),
                        SizedBox(height: 10.0),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Confirm Password',
                            icon: Icon(Icons.password),
                          ),
                          obscureText: true,
                        ),
                        SizedBox(height: 11.0),
                        SizedBox(height: 10.0),
                        ElevatedButton(
                          onPressed: () {
                            // Lógica de inicio de sesión aquí
                          },
                          child: Text('Sign Up'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 73, 96, 229),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ),
              Text("Already have an account? Log in here")
            ],
          ),
        ),
      ),
    );
  }
}
