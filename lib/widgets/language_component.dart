import 'package:flutter/material.dart';
import 'package:login_app/models/language_model.dart';
import 'package:login_app/views/describetion_view.dart';

class LanguageComponent extends StatelessWidget {
  final LanguageModel languageModel;

  const LanguageComponent({super.key, required this.languageModel});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return DescribetionView(
                    languageModel: languageModel,
                  );
                },
              ));
            },
            child: Row(
              children: [
                Image.asset(
                  languageModel.languageImage,
                  height: 150,
                  width: 150,
                  fit: BoxFit.cover,
                ),
                const Spacer(
                  flex: 1,
                ),
                Text(
                  languageModel.languageName,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 56, 56, 56)),
                ),
                const Spacer(
                  flex: 1,
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Divider(
              thickness: 2,
              color: Color.fromARGB(255, 56, 56, 56),
              endIndent: 30,
              indent: 30,
            ),
          )
        ],
      ),
    );
  }
}
