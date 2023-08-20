import 'package:flutter/material.dart';
import 'package:main_project/home_page.dart';
import 'package:main_project/signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
        title: Text(
          'Login Page',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 100,),
              Text(
                'Hello',
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.pinkAccent,
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(
                'Sign into your account please',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black
                ),
              ),
              SizedBox(height: 30,),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 7,
                        color: Colors.grey.withOpacity(0.3),
                        offset: Offset(1,1),
                      ),
                    ]
                ),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Email',
                      prefixIcon: Icon(Icons.email_rounded,
                          color: Colors.pinkAccent, size: 30),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.white,
                          )
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.white,
                          )
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      )
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 7,
                      color: Colors.grey.withOpacity(0.3),
                      offset: Offset(1,1),
                    ),
                  ]
                ),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Password',
                      prefixIcon: Icon(Icons.email_rounded,
                          color: Colors.pinkAccent, size: 30),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                        child: Icon(_obscureText
                            ? Icons.visibility
                            : Icons.visibility_off),
                      ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: Colors.white,
                      )
                    ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.white,
                          )
                      ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)
                    )
                  ),

                  obscureText: _obscureText,

                ),
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Expanded(
                      child: Container(),
                  ),
                  Text(
                    'Forgot your Password?',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.pinkAccent,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
              SizedBox(height: 70,),
              Center(
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Container(
                    height: 70,
                    width: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.pinkAccent,
                    ),
                    child: Center(
                      child: Text('Log in',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50,),
              Center(
                child: Row(
                  children: [
                    Text('Don\'t have an account? ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
                      },
                      child: Text('Creat account',
                        style: TextStyle(
                            color: Colors.pinkAccent,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // InkWell(
              //   onTap: (){
              //     Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
              //   },
              //   child: Center(
              //     child: RichText(text: TextSpan(
              //       text: 'Don\'t have an account? ',
              //       style: TextStyle(
              //         color: Colors.black,
              //         fontSize: 20
              //       ),
              //       children: [
              //         TextSpan(
              //           text: 'Creat account',
              //           style: TextStyle(
              //               color: Colors.pinkAccent,
              //               fontSize: 20,
              //             fontWeight: FontWeight.bold
              //           ),
              //         )
              //       ],
              //     ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

