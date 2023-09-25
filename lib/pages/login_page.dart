import 'package:firebase_app/widgets/rounded_circular_button.dart';
import 'package:firebase_app/widgets/rounded_form_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromRGBO(
        255,
        255,
        255,
        1.0,
      ),
      body: _buildUI(context),
    );
  }

  Widget _buildUI(BuildContext context) {
    return Column(
      children: [_header(context), _loginForm(context)],
    );
  }

  Widget _header(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(
        230,
        253,
        253,
        1.0,
      ),
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.10,
      ),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.25,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(
              20,
              0,
              0,
              0,
            ),
            child: Text(
              "Sign In",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 30,
              ),
            ),
          ),
          Image.asset(
            "assets/images/header.png",
            width: MediaQuery.of(context).size.width * 0.45,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }

  Widget _loginForm(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.75,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 20,
        ),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [_formFields(context), _bottomButtons(context)],
          ),
        ),
      ),
    );
  }

  Widget _formFields(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.20,
      child: const Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          RoundedFormTextField(
            prefixIcon: Icons.email_outlined,
            hintText: "Email Address",
          ),
          RoundedFormTextField(
            prefixIcon: Icons.lock_outlined,
            hintText: "Password",
            obscureText: true,
          ),
          Text(
            "Forgot Password?",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 15,
            ),
          )
        ],
      ),
    );
  }

  Widget _bottomButtons(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.80,
          height: MediaQuery.of(context).size.height * 0.06,
          child: const RoundedCircularButton(
            text: "Sign In",
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            top: 20,
            bottom: 30,
          ),
          child: Text(
            "I Don't Have an account",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Colors.blue,
            ),
          ),
        )
      ],
    );
  }
}
