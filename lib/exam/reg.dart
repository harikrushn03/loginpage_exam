import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
         backgroundColor: Color.fromARGB(255, 166, 248, 247),
       appBar: AppBar(),
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Center(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(
                      "asset/5.png",
                    ))),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            TextField(
              style: TextStyle(),
              decoration: InputDecoration(
                  hintText: "USER NAME",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              style: TextStyle(),
              decoration: InputDecoration(
                  hintText: "Email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              style: TextStyle(),
              decoration: InputDecoration(
                  hintText: "PASSWORD",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            const SizedBox(
              height: 60,
            ),
            Container(
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'REGISTER->',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 122, 230, 149),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
