import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  final VoidCallback showLoginPage;
  const RegisterPage({super.key, required this.showLoginPage});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

    //text controllers
  final _emailController = TextEditingController();
  final _passwordController= TextEditingController();
  final _confirmpasswordController= TextEditingController();

   @override
  void dispose() {
    // TODO: implement dispose
    _emailController.dispose();
    _passwordController.dispose();
    _confirmpasswordController.dispose();
    super.dispose();
  }

  Future signUp() async{
    if (passwordConfirmed()){
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: _emailController.text.trim(), 
      password: _passwordController.text.trim()
      );

  }}

  bool passwordConfirmed (){
    if (_passwordController.text.trim() == _confirmpasswordController.text.trim()){
      return true;
    }
    else{
      return false;
    }
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
                    'Hello there',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 36,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                    'Register Below',
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
                  
                  //username textfield
          
                  //confirm password textfield
          
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
                          controller: _confirmpasswordController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Confirm Password',
                          ),
                        ),
                      ),
                      ),
                    ),
          
                    SizedBox(height: 10,),
          
                  //sign in button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: GestureDetector(
                onTap: SignUp,
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(12),
                    ),
                  child: Center(
                    child: Text(
                      'Sign up',
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
                'I am a member',
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
                ),
              GestureDetector(
                onTap: widget.showLoginPage,
                child: Text(
                  ' Log in',
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