import 'package:flutter/material.dart';
import 'package:login_app/widgets/languages_list.dart';

class LanguageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            'Programming Languages',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          backgroundColor: const Color.fromARGB(255, 56, 56, 56),
        ),
        body: const LanguagesList());
  }
}
