import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class AskQuestions extends StatelessWidget {
  const AskQuestions({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ask Questions"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Share content',
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(height: 30),
                TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 240, 240, 255),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: 'Title:',
                  ),
                ),
                SizedBox(height: 30),
                TextFormField(
                  maxLines: 5,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 240, 240, 255),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: 'Description:',
                  ),
                ),
                SizedBox(height: 30),
                TextFormField(
                  maxLines: 7,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 240, 240, 255),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: 'Code:',
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    // backgroundColor: Color.fromARGB(255, 240, 248, 252),
                    backgroundColor: Colors.white,
                  ),
                  onPressed: () async {
                    final result = await FilePicker.platform.pickFiles(
                      type: FileType.custom,
                      allowedExtensions: ['pdf', 'doc', 'docx'],
                    );

                    if (result != null) {
                      // Manejo de archivos, guardarlo o cargarlo
                      final filePath = result.files.single.path;
                      print('Archivo seleccionado: $filePath');
                    } else {
                      print('Selección de archivos cancelada');
                    }
                  },
                  icon: Icon(
                    Icons.attach_file,
                    color: Colors.black,
                    size: 30,
                  ),
                  label: Text(
                    "Seleccionar Archivo",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(height: 30),
                TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 240, 240, 255),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: 'Tags:',
                  ),
                ),
                SizedBox(height: 25),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(10, 18, 59, 1),
                  ),
                  onPressed: () {
                    ScaffoldMessenger.of(context)
                      ..hideCurrentSnackBar()
                      ..showSnackBar(SnackBar(
                        content: Text("Posteando pregunta..."),
                      ));
                  },
                  child: Text(
                    "Post",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context)
                      ..hideCurrentSnackBar()
                      ..showSnackBar(SnackBar(
                        content: Text("Acción cancelada, redirigiendo..."),
                      ));
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    backgroundColor: Color.fromARGB(255, 255, 135, 126),
                  ),
                  child: Text(
                    "Cancel",
                    style: TextStyle(color: Colors.black),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Color.fromARGB(255, 255, 135, 126), 