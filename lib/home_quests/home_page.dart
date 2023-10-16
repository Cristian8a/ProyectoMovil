import 'dart:io';

import 'package:code_masters/get_started/login_home.dart';
import 'package:code_masters/get_started/register_home.dart';
import 'package:flutter/material.dart';

class HomeQuest extends StatelessWidget {
  const HomeQuest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Image.asset(
                'assets/CodeMasters.png',
                width: 40,
                height: 40,
              ),
            ),
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
      body: Container(
        child: Container(
          child: Padding(
            padding: EdgeInsets.all(30.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("All Questions", style: TextStyle(fontSize: 26)),
                    SizedBox(height: 7),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Newest",
                              style: TextStyle(color: Colors.black)),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Frequent",
                              style: TextStyle(color: Colors.black)),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Unanswered",
                              style: TextStyle(color: Colors.black)),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(), // Espaciador flexible
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Acción del primer botón nuevo
                      },
                      child: Text("All Questions"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Acción del segundo botón nuevo
                      },
                      child: Text("Share content"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
