import 'package:code_masters/get_started/login_home.dart';
import 'package:code_masters/get_started/register_home.dart';
import 'package:code_masters/home_quests/post_contanier.dart';
import 'package:code_masters/home_quests/routes/ask_questions.dart';
import 'package:code_masters/home_quests/routes/post_content.dart';
import 'package:flutter/material.dart';

class HomeQuest extends StatelessWidget {
  HomeQuest({Key? key}) : super(key: key);

  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController tagsController = TextEditingController();

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
                'assets/CodeMastersNegative.png',
                width: 60,
                height: 60,
              ),
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              )),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterHome()),
                );
              },
              child: Text(
                'Sign Up',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 73, 96, 229),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Text('Log in', style: TextStyle(color: Colors.white)),
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
                        //SizedBox(height: 5),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AskQuestions()),
                            );
                          },
                          child: Text(
                            "Ask Questions",
                            style: TextStyle(fontSize: 10, color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.indigo,
                            padding: EdgeInsets.all(5),
                          ),
                        ),
                        SizedBox(height: 12),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PostContent()));
                          },
                          child: Text(
                            "Share Content",
                            style: TextStyle(fontSize: 10, color: Colors.black),
                          ),
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

  void saveQuestion(BuildContext context) {
    final String title = titleController.text;
    final String description = descriptionController.text;
    final String tags = tagsController.text;

    // Lógica Guardado de post
    // por ejemplo, enviarla a un servidor o guardarla en una base de datos local.

    // Enviarla a pantalla anterior
    // Navigator.pop(context);
  }
}
