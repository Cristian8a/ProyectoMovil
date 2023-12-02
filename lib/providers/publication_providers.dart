import 'package:flutter/material.dart';

class PublicData {
  final String title;
  final String question;
  final String code;
  final String tags;
  bool status;
  final String author;
  final DateTime date;
  int frequency;

  PublicData({
    required this.title,
    required this.question,
    required this.code,
    required this.tags,
    required this.status,
    required this.author,
    required this.date,
    required this.frequency,
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
  List<PublicData> getUnansweredPosts() {
    return savedData.where((post) => !post.status).toList();
  }

  void saveData(DateTime currentDate) {
    final data = PublicData(
      title: questionTitle.text,
      question: questionDescription.text,
      code: questionCode.text,
      tags: questionTags.text,
      author: Author.text,
      date: currentDate,
      status: status,
      frequency: 0,
    );
    savedData.add(data);
    resetAllControllers();
    notifyListeners();
  }

  void resetAllControllers() {
    questionTitle.clear();
    questionDescription.clear();
    questionCode.clear();
    questionTags.clear();
    notifyListeners();
  }

  void sortDataByDate() {
    savedData.sort((a, b) => b.date.compareTo(a.date));
    notifyListeners();
  }

  void sortDataByFrequency() {
    savedData.sort((a, b) => b.frequency.compareTo(a.frequency));
    notifyListeners();
  }
}
