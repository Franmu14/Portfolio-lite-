import 'package:flutter/material.dart';
import 'package:loginfull/pages/login_page.dart';
import 'package:loginfull/pages/register_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {

  //initially show the loginpage
  bool showLoginPage=true;

  void toggleScreens(){
    setState(() {
      showLoginPage= !showLoginPage;
    });

  }


  @override
  Widget build(BuildContext context) {
    if (showLoginPage){
      return LoginPage(showRegisterPage: toggleScreens);
    }
        else{
          return RegisterPage(showLoginPage: toggleScreens);
        }
    }
  }
