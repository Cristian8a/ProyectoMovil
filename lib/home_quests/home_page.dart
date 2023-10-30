import 'package:code_masters/get_started/login_home.dart';
import 'package:code_masters/get_started/register_home.dart';
import 'package:code_masters/home_quests/post_contanier.dart';
import 'package:flutter/material.dart';

class HomeQuest extends StatelessWidget {
  const HomeQuest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget post = buildPostContainer(
      "Titulo 1",
      "Comment that aims to give more information about the question that is been asked.",
      "tag1",
      "Answered",
      "Cristian",
      "16/10/2023",
    );

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
          ],
        ),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterHome()),
                );
              },
              child: Text('Sign Up'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 73, 96, 229),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Text('Log in'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 7, 11, 67),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.grey.shade200,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("All Questions", style: TextStyle(fontSize: 36)),
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
                              side: BorderSide(color: Colors.black),
                              padding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 10),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                ),
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("Frequent",
                                style: TextStyle(color: Colors.black)),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                              side: BorderSide(color: Colors.black),
                              padding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 10),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("Unanswered",
                                style: TextStyle(color: Colors.black)),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                              side: BorderSide(color: Colors.black),
                              padding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 10),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(height: 15),
                        ElevatedButton(
                          onPressed: () {
                            // Acción del primer botón nuevo
                          },
                          child: Text("Ask Questions"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.indigo,
                            padding: EdgeInsets.all(5),
                          ),
                        ),
                        SizedBox(height: 25),
                        ElevatedButton(
                          onPressed: () {
                            // Acción del segundo botón nuevo
                          },
                          child: Text("Share Content"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey,
                            padding: EdgeInsets.all(5),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: 20,
              color: Colors.black,
            ),
            post,
            Divider(
              height: 30,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
