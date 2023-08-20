
import 'package:flutter/material.dart';
import 'package:main_project/login_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
        title: Text(
          'Create Account',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                'Create Account',
                style: TextStyle(
                  fontSize: 35,
                ),
              ),
              RichText(
                text: TextSpan(
                  text: 'Enter your Name, Email and Password for sign up. ',
                  style: TextStyle(color: Colors.grey[600], fontSize: 20),
                  // children: [
                  //   TextSpan(
                  //     text: 'Already have an account?',
                  //     style: TextStyle(
                  //         color: Colors.pinkAccent,
                  //         fontSize: 20,
                  //         fontWeight: FontWeight.bold),
                  //   )
                  // ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 7,
                        color: Colors.grey.withOpacity(0.3),
                        offset: Offset(1, 1),
                      ),
                    ]),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Username',
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.pinkAccent,
                        size: 30,
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.white,
                          )),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.white,
                          )),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 7,
                        color: Colors.grey.withOpacity(0.3),
                        offset: Offset(1, 1),
                      ),
                    ]),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Email',
                      prefixIcon: Icon(Icons.email_rounded,
                          color: Colors.pinkAccent, size: 30),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.white,
                          )),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.white,
                          )),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 7,
                        color: Colors.grey.withOpacity(0.3),
                        offset: Offset(1, 1),
                      ),
                    ]),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Password',
                      prefixIcon: Icon(Icons.lock_rounded,
                          color: Colors.pinkAccent,
                          size: 30),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _obscureText =! _obscureText;
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
                          )),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.white,
                          )),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))
                    ),

                  obscureText: _obscureText,

                ),
              ),
              SizedBox(height: 40,),
              Center(
                child: Container(
                  height: 70,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.pinkAccent,
                  ),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: Center(
                      child: Text('Sign up',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/fb.png'),
                      radius: 20,
                    ),
                  ),
                  SizedBox(width: 12,),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/gg.png'),
                    radius: 20,
                  ),
                  SizedBox(width: 12,),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/tw.png'),
                    radius: 20,
                  ),
                ],
              ),
              // Center(
              //   child: Text('Sign up using on the following method'),
              // ),
              // Wrap(
              //   children:List<Widget>.generate(3, (index){
              //     return CircleAvatar(
              //       radius: 20,
              //       backgroundImage: AssetImage(
              //         "assets/"+images[index]
              //       ),
              //     );
              //   })
              // ),
              SizedBox(height: 20,),
              Center(
                child: Row(
                  children: [
                    Text('Already have an account? ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                      },
                      child: Text('Click here to login',
                        style: TextStyle(
                            color: Colors.pinkAccent,
                            fontSize: 17,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // InkWell(
              //   onTap: (){
              //     Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
              //   },
              //   child: Center(
              //     child: RichText(text: TextSpan(
              //       text: 'Already have an account? ',
              //       style: TextStyle(
              //           color: Colors.black,
              //           fontSize: 17
              //       ),
              //       children: [
              //         TextSpan(
              //           text: 'Click here to login',
              //           style: TextStyle(
              //               color: Colors.pinkAccent,
              //               fontSize: 17,
              //               fontWeight: FontWeight.bold
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




// if you want to add picture
//Container(
//         width: double.infinity,
//         child: Column(
//           children: [
//             SizedBox(height: 100,),
//             CircleAvatar(
//               radius: 60,
//               backgroundImage: NetworkImage('https://scontent.fdac139-1.fna.fbcdn.net/v/t1.6435-9/81728750_497692907538659_8885644481899003904_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=M_DYagmTdVkAX-90K4d&_nc_oc=AQk5EJiHrFCxTdc99FY_4JC5ebfCnh0aCl9NLWuGRjmsICkLlJBSF2EL8RE_vJO-8UI&_nc_ht=scontent.fdac139-1.fna&oh=00_AfAu910hCZjzaYLn9A26_5p3sZuA5bfcXM9t-VYR7xBx7A&oe=649F179B'),
//               backgroundColor: Colors.white12,
//             )
//           ],
//         ),
//       )
