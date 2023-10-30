import 'package:flutter/material.dart';

Widget buildPostContainer(String title, String description, String tags,
    String status, String author, String date) {
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
          title,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text(
          description,
          style: TextStyle(fontSize: 15),
        ),
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.lightBlue.shade100),
          child: Text(
            tags,
            style: TextStyle(fontSize: 12),
          ),
        ),
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.green.shade100),
          child: Text(
            status,
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
                          " Author: $author",
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
                      "Date: $date",
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
}
