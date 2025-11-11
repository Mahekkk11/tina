import 'package:flutter/material.dart';
import 'package:second/pages/Dashboard.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //Constant Variable
  final String strUsername = "admin";
  final String strPassword = "admin";

  //Controller
  final TextEditingController textEditingController1 = TextEditingController();
  final TextEditingController textEditingController2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: (Text("Login"))),
        backgroundColor: Colors.blue,
        titleTextStyle: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: textEditingController1,
                decoration: InputDecoration(
                    labelText: "Username",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)
                    ),
                    prefixIcon: Icon(Icons.person)),
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                controller: textEditingController2,
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)
                    ),
                    prefixIcon: Icon(Icons.lock)),
              ),
              SizedBox(
                height: 16,
              ),
              ElevatedButton.icon(
                onPressed: () {
                  validate(context);
                },
                label: Text("Submit"),
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(190, 54),
                    backgroundColor: Colors.teal,
                    foregroundColor: Colors.black,
                    textStyle:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void validate(BuildContext context) {
    if (textEditingController1.text.trim().isEmpty ||
        textEditingController2.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Username and  Password is Invalid"),
      ));
    } else if (textEditingController1.text == strUsername &&
        textEditingController2.text == strPassword) {
      // displayDialog(context, "Success");
      Navigator.push(context, MaterialPageRoute(builder: (context) => Dashboard(strMessage: "Hello")));
    } else {
      displayDialog(context, "Failed");
    }
  }

  void displayDialog(BuildContext context, String message) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("MyApp"),
              content: Text(message),
              actions: [
                TextButton(onPressed: () => Navigator.pop(context), child: Text("ok"))
              ],
            ));
  }
}
