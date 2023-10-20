import 'package:assignment7/form2/form2.dart';
import 'package:assignment7/signUpModal.dart';
import 'package:flutter/material.dart';

class Form1 extends StatefulWidget {
  const Form1({super.key});

  @override
  State<Form1> createState() => _Form1State();
}

class _Form1State extends State<Form1> {
  String name = "";
  String email = "";
  String phonenumber = "";
  String password = "";
  String gender = "";
  List hobbies = [false, false];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Form 1"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: const Text('Form 1',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: width - 40,
                  height: 50,
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: TextField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        label: Text("Name"),
                        labelStyle: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                        floatingLabelAlignment: FloatingLabelAlignment.start,
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            gapPadding: 5)),
                  ),
                )
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: width - 40,
                  height: 50,
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        label: Text("Email"),
                        labelStyle: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                        floatingLabelAlignment: FloatingLabelAlignment.start,
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            gapPadding: 5)),
                  ),
                )
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: width - 40,
                  height: 50,
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        label: Text("Phonenumber"),
                        labelStyle: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                        floatingLabelAlignment: FloatingLabelAlignment.start,
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            gapPadding: 5)),
                  ),
                )
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: width - 40,
                  height: 50,
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: TextField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                        label: Text("Password"),
                        labelStyle: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                        floatingLabelAlignment: FloatingLabelAlignment.start,
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            gapPadding: 5)),
                  ),
                )
              ],
            ),
            Text("Gender:"),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    width: width - 40,
                    height: 50,
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        Radio(
                            value: "Male",
                            groupValue: gender,
                            onChanged: (text) {
                              setState(() {
                                gender = text!;
                              });
                            }),
                        Text("Male"),
                        Radio(
                            value: "Female",
                            groupValue: gender,
                            onChanged: (text) {
                              setState(() {
                                gender = text!;
                              });
                            }),
                        Text("Female"),
                      ],
                    ))
              ],
            ),
            Text("Hobbies:"),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    width: width - 40,
                    // height: 50,
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Checkbox(
                                value: hobbies[0],
                                onChanged: (state) {
                                  setState(() {
                                    hobbies[0] = state!;
                                  });
                                }),
                            Text("Cricket"),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                                value: hobbies[1],
                                onChanged: (state) {
                                  setState(() {
                                    hobbies[1] = state!;
                                  });
                                }),
                            Text("Football"),
                          ],
                        )
                      ],
                    ))
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  SignUpModal().updateData({
                    'name': name,
                    'email': email,
                    'phonenumber': phonenumber,
                    'password': password,
                    'gender': gender,
                    'hobbies': hobbies,
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Form2()),
                  );
                },
                child: Text("Submit"))
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
