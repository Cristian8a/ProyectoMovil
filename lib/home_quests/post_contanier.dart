import 'package:flutter/material.dart';
import 'package:code_masters/providers/publication_providers.dart';

Widget buildPostContainer(DataProvider dataProvider) {
  return ListView.builder(
    itemExtent: 200,
    itemCount: dataProvider.savedData.length,
    itemBuilder: (context, index) {
      final data = dataProvider.savedData[index];
      return Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${data.title}',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              '${data.question}',
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(5),
              width: 55,
              height: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.lightBlue.shade100),
              child: Text(
                '${data.tags}',
                style: TextStyle(fontSize: 12),
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(5),
              width: 55,
              height: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.green.shade100),
              child: Text(
                '${data.status}',
                style: TextStyle(fontSize: 12),
              ),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.person,
                              color: Colors.blue.shade300,
                              size: 10,
                            ),
                            Text(
                              " Author: ${data.author}",
                              style: TextStyle(
                                  fontSize: 10, color: Colors.blue.shade300),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        Text(
                          "Date: ${data.date}",
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}
