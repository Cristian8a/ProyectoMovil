import 'package:code_masters/providers/publication_providers.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AskQuestions extends StatelessWidget {
  const AskQuestions({Key? key});

  @override
  Widget build(BuildContext context) {
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
            Text(
              'Ask Questions',
              style: TextStyle(color: Colors.white),
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
        ],
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
                  controller: context.watch<DataProvider>().questionTitle,
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
                  controller: context.watch<DataProvider>().questionDescription,
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
                  controller: context.watch<DataProvider>().questionCode,
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
                  controller: context.watch<DataProvider>().questionTags,
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
                    context.read<DataProvider>().saveData();
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
                    context.read<DataProvider>().resetAllControllers();
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
