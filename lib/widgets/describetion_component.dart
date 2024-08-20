import 'package:flutter/material.dart';
import 'package:login_app/models/language_model.dart';

class DescribetionComponent extends StatelessWidget {
  final LanguageModel languageModel;
  const DescribetionComponent({super.key, required this.languageModel});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Image.asset(
              languageModel.languageImage,
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              languageModel.languageName,
              style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 56, 56, 56)),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              languageModel.describetion,
              style: const TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 56, 56, 56),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
