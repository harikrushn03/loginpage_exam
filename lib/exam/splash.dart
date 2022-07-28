
import 'package:flutter/material.dart';
import 'package:loginpage_exam/exam/login.dart';
import 'package:loginpage_exam/exam/reg.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height; 
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 166, 248, 247),
      appBar: AppBar(),
      body: Center(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Container(
              height: 230,
              width: 230,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("asset/1.png"),
                  )),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          Container(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Loginpage();
                    },
                  ),
                );
              },
              child: Text(
                'LOGIN',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 122, 230, 149),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Register();
                    },
                  ),
                );
              },
              child: Text(
                'REGISTER',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 122, 230, 149),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
