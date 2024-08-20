import 'package:flutter/material.dart';
import 'package:login_app/views/language_view.dart';
import 'package:login_app/views/sign_up_view.dart';
import 'package:login_app/widgets/custom_field.dart';

class LoginFiled extends StatefulWidget {
  @override
  State<LoginFiled> createState() => _LoginFiledState();
}

class _LoginFiledState extends State<LoginFiled> {
  bool _obscureText = true;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          const Spacer(
            flex: 2,
          ),
          Image.asset(
            'assets/logo.jpeg',
            height: 100,
            width: 100,
          ),
          const Spacer(
            flex: 1,
          ),
          CustomFormField(hintText: 'Email'),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Enter your password';
                }
                return null;
              },
              obscureText: _obscureText,
              decoration: InputDecoration(
                errorStyle: const TextStyle(fontSize: 12),
                hintStyle: const TextStyle(fontSize: 12),
                contentPadding: const EdgeInsets.symmetric(horizontal: 18),
                hintText: 'Password',
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText =
                          !_obscureText; 
                    });
                  },
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(33),
                  borderSide: const BorderSide(
                      color: Color.fromARGB(255, 237, 235, 235), width: 55),
                ),
              ),
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return LanguageView();
                  },
                ));
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 56, 56, 56),
              fixedSize: Size(340, 60),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
            ),
            child: const Text(
              'Log In',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Dont't have an account,",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return SignUpView();
                    },
                  ));
                },
                child: const Text(
                  " Sign Up",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Text(
                " Now",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ],
          ),
          const Spacer(
            flex: 1,
          )
        ],
      ),
    );
  }
}
