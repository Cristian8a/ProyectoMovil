import 'package:flutter/material.dart';

class PublicData {
  final String title;
  final String question;
  final String code;
  final String tags;
  bool status;
  final String author;
  final String date;

  PublicData({
    required this.title,
    required this.question,
    required this.code,
    required this.tags,
    required this.status,
    required this.author,
    required this.date,
  });
}

class DataProvider extends ChangeNotifier {
  final TextEditingController questionTitle = TextEditingController();
  final TextEditingController questionDescription = TextEditingController();
  final TextEditingController questionCode = TextEditingController();
  final TextEditingController questionTags = TextEditingController();
  final TextEditingController Author = TextEditingController();
  final TextEditingController Date = TextEditingController();
  bool status = false;

  List<PublicData> savedData = [];

  void saveData() {
    final data = PublicData(
      title: questionTitle.text,
      question: questionDescription.text,
      code: questionCode.text,
      tags: questionTags.text,
      author: Author.text,
      date: Date.text,
      status: status,
    );
    savedData.add(data);
    notifyListeners();
  }

  void resetAllControllers() {
    questionTitle.clear();
    questionDescription.clear();
    questionCode.clear();
    questionTags.clear();
    notifyListeners();
  }
}
