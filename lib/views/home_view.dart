import 'package:flutter/material.dart';
import 'package:login_app/widgets/login_filed.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LoginFiled(),
    );
  }
}
