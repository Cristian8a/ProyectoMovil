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
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(height: 10),
        Text(
          "Tags: $tags",
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(height: 10),
        Text(
          "Status: $status",
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(height: 10),
        Text(
          "Author: $author",
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(height: 10),
        Text(
          "Date: $date",
          style: TextStyle(fontSize: 16),
        ),
      ],
    ),
  );
}
