import 'package:flutter/material.dart';
import 'package:login_app/models/language_model.dart';
import 'package:login_app/widgets/language_component.dart';

List<LanguageModel> languagesList = [
  LanguageModel(
      languageImage: 'assets/dart.png',
      languageName: 'Dart',
      describetion:
          'Dart is a client-optimized language for developing fast apps on any platform'),
  LanguageModel(
    languageImage: 'assets/cpp.png',
    languageName: 'C++',
    describetion:
        'C++ (or “C-plus-plus”) is a generic programming language for building software.',
  ),
  LanguageModel(
      languageImage: 'assets/python.jpeg',
      languageName: 'Python',
      describetion:
          'Python is an easy to learn, powerful programming language.'),
  LanguageModel(
      languageImage: 'assets/js.png',
      languageName: 'JavaScript',
      describetion:
          'JavaScript is a scripting language that enables you to create dynamically updating content, control multimedia, animate images, and pretty much everything else.'),
  LanguageModel(
      languageImage: 'assets/java.png',
      languageName: 'Java',
      describetion:
          'Java is a multiplatform, object-oriented programming language that runs on billions of devices worldwide.'),
  LanguageModel(
      languageImage: 'assets/html.png',
      languageName: 'Html',
      describetion: 'HTML stands for Hyper Text Markup Language.'),
  LanguageModel(
      languageImage: 'assets/css.png',
      languageName: 'Css',
      describetion:
          'Cascading Style Sheets (CSS) is a stylesheet language used to describe the presentation of a document written in HTML.'),
];

class LanguagesList extends StatelessWidget {
  const LanguagesList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: languagesList.length,
      itemBuilder: (context, index) {
        return LanguageComponent(
          languageModel: languagesList[index],
        );
      },
    );
  }
}
