import 'package:flutter/material.dart';
import 'package:loginpage_exam/exam/reg.dart';

class Loginpage extends StatefulWidget {
  Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final GlobalKey<FormState> _loginformkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 217, 255, 253),
      appBar: AppBar(),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Form(
          key: _loginformkey,
          child: Column(children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage("asset/3.png"))),
                ),
              ),
            ),
            const SizedBox(
              height: 150,
            ),
            Center(
              child: TextFormField(
                style: const TextStyle(),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  hintText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter Email";
                  }
                  if (!value.isValidEmail()) {
                    return "Enter Valid Email";
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              style: const TextStyle(),
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.password_rounded),
                  hintText: "password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
            const SizedBox(
              height: 70,
            ),
            ElevatedButton(
              onPressed: () {
                if (_loginformkey.currentState!.validate()) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Register()));
                }
              },
              // ignore: sort_child_properties_last
              child: const Text(
                'LOGIN',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 122, 201, 230),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28),
                ),
              ),
            ),
            TextButton(
                onPressed: () {
                  _container();
                },
                child: const Text(
                  "Dialoguebox",
                  style: TextStyle(fontSize: 30),
                ))
          ]),
        ),
      ),
    );
  }

  // void _Container() {
  //   showDialog(
  //       context: context,
  //       builder: (context) {
  //         return AlertDialog(
  //           actions: [
  //             TextButton(
  //                 onPressed: () {
  //                   Navigator.pop(context);
  //                 },
  //                 child: Text("yes"))
  //           ],
  //           title: Text("save your work"),
  //         );
  //       });
  // }

  void _container() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("yes"))
            ],
            title: Text("save your work"),
          );
        });
  }
}

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(this);
  }
}
