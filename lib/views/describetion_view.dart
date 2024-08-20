import 'package:flutter/material.dart';
import 'package:login_app/models/language_model.dart';
import 'package:login_app/widgets/describetion_component.dart';

class DescribetionView extends StatelessWidget {
  final LanguageModel languageModel;

  const DescribetionView({super.key, required this.languageModel});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Describetion Language",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        backgroundColor: const Color.fromARGB(255, 56, 56, 56),
      ),
      body: DescribetionComponent(
        languageModel: languageModel,
      ),
    );
  }
}
