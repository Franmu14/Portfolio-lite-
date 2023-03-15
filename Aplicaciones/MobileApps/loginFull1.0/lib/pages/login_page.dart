import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'forgotpw_page.dart';

class LoginPage extends StatefulWidget {
  final VoidCallback showRegisterPage;
  const LoginPage({super.key,required this.showRegisterPage});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  //text controllers
  final _emailController = TextEditingController();
  final _passwordController= TextEditingController();


  Future SignIn () async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _emailController.text.trim(), 
      password: _passwordController.text.trim()
      );
  }
  
  @override
  void dispose() {
    // TODO: implement dispose
    _emailController.dispose();
    _passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,       
              children:[
                Icon(
                  Icons.phone_android,
                  size: 100,
                  ),
                  SizedBox(height: 10,),
            //Hello Again!
                  Text(
                    'Hello Again',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 36,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                    'Welcome back',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 24,
                      ),
                    ),
                    SizedBox(height: 50,),
          
                    //email textfield
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(12)
                        ),
                       child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: TextField(
                          controller: _emailController,
                          obscureText: true,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Email',
                          ),
                        ),
                      ),
                      ),
                    ),
                    SizedBox(height: 10,),
                  
                  //username textfield
          
                  //password textfield
          
            Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(12)
                        ),
                       child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: TextField(
                          controller: _passwordController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Password',
                          ),
                        ),
                      ),
                      ),
                    ),

                    SizedBox(height: 10,),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.push(
                                context, MaterialPageRoute(builder: (context)
                              {
                                return ForgotPasswordPage();
                              },
                              ),
                              );
                            },
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,                                           
                                                  ),),
                          ),
                          
                        ],
                      ),
                    ),
          
                    SizedBox(height: 10,),
          
                  //sign in button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: GestureDetector(
                onTap: SignIn,
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(12),
                    ),
                  child: Center(
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        
                        ),
                      )),
                ),
              ),
            ),
          
            SizedBox(height: 25,),
          
                  //not a memebr? register now
                  Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Not a member yet?',
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
                ),
              GestureDetector(
                onTap: widget.showRegisterPage,
                child: Text(
                  ' Register Now',
                  style: TextStyle(
                    color: Colors.blue, 
                    fontWeight: FontWeight.bold
                    )
                    ),
              ),
            ],
                  ),
                  
                ]),
          ),
      )
        
      ),
    );
  }
}