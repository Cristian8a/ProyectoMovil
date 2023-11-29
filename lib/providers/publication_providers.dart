import 'package:flutter/material.dart';

class PublicData {
  final String title;
  final String question;
  final String code;
  final String tags;

  PublicData({
    required this.title,
    required this.question,
    required this.code,
    required this.tags,
  });
}

class DataProvider extends ChangeNotifier {
  final TextEditingController questionTitle = TextEditingController();
  final TextEditingController questionDescription = TextEditingController();
  final TextEditingController questionCode = TextEditingController();
  final TextEditingController questionTags = TextEditingController();

  List<PublicData> savedData = [];

  void saveData() {
    final data = PublicData(
      title: questionTitle.text,
      question: questionDescription.text,
      code: questionCode.text,
      tags: questionTags.text,
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
