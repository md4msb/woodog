import 'package:flutter/material.dart';
import 'package:interview_task/screens/home_sreen.dart';
import 'package:interview_task/service/api_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  String name = "";
  String email = "";
  String id = "";
  String password = "";
  String username = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 40),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Let’s start here",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 34,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Fill in your details to begin",
                    style: TextStyle(fontSize: 17, color: Color(0xFF7A7A7A)),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextFormField(
                  onChanged: (value) {
                    name = value;
                  },
                  decoration: InputDecoration(
                    hintText: "Full Name",
                    fillColor: const Color(0xFFF0F0F0),
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextFormField(
                  onChanged: (value) {
                    email = value;
                  },
                  decoration: InputDecoration(
                    hintText: "Email",
                    fillColor: const Color(0xFFF0F0F0),
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextFormField(
                  onChanged: (value) {
                    password = value;
                  },
                  decoration: InputDecoration(
                    hintText: "Password",
                    fillColor: const Color(0xFFF0F0F0),
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: GestureDetector(
                  onTap: () async {
                    Map signUpData = {
                      "email": email,
                      "id": "usrid-1",
                      "password": password,
                      "username": "usrname-1"
                    };
                    apiCalling(signUpData);
                    // SharedPreferences prefs =
                    //     await SharedPreferences.getInstance();

                    // var check = prefs.getBool("signup");

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                    // } else {
                    //   ScaffoldMessenger.of(context).showSnackBar(
                    //     const SnackBar(
                    //       content: Text(
                    //         'Oops Something went wrong',
                    //       ),
                    //     ),
                    //   );
                    // }
                  },
                  child: Container(
                    height: 58,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFFFB724C),
                          Color(0xFFFE904B),
                        ],
                      ),
                      color: Colors.deepPurple.shade300,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 200,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "By signing in, I agree with ",
                        style: TextStyle(color: Color(0xFFB0B0B0)),
                      ),
                      Text(
                        "Terms of Use ",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "and ",
                        style: TextStyle(color: Color(0xFFB0B0B0)),
                      ),
                      Text(
                        "Privacy Policy ",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
