import 'package:assignment7/signUpModal.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Form2 extends StatefulWidget {
  const Form2({super.key});

  @override
  State<Form2> createState() => _Form2State();
}

class _Form2State extends State<Form2> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Form 2"),
      ),
      body: SingleChildScrollView(
        child: Consumer<SignUpModal>(
          builder: (context, signUp, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: const Text('Form 2',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
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
                      child: Text("Name: ${signUp.SignUp['name']}"),
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
                      child: Text("Email: ${signUp.SignUp['email']}"),
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
                      child:
                          Text("Phonenumber: ${signUp.SignUp['phonenumber']}"),
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
                      child: Text("Password: ${signUp.SignUp['password']}"),
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
                                groupValue: signUp.SignUp['gender'],
                                onChanged: (text) {}),
                            Text("Male"),
                            Radio(
                                value: "Female",
                                groupValue: signUp.SignUp['gender'],
                                onChanged: (text) {}),
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
                                    value: signUp.SignUp['hobbies'][0],
                                    onChanged: (state) {}),
                                Text("Cricket"),
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                    value: signUp.SignUp['hobbies'][1],
                                    onChanged: (state) {}),
                                Text("Football"),
                              ],
                            )
                          ],
                        ))
                  ],
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("Back"))
              ],
            );
          },
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
