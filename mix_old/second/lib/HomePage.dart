import 'package:flutter/material.dart';
// import 'package:flutter17/main.dart';

//stl shortcut

class Homepage extends StatelessWidget {
  Homepage({super.key});

  int a = 0;
  int b = 0;
  int c = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Home Page",
            style: TextStyle(
                fontFamily: 'MozillaHeadline',
                fontWeight: FontWeight.w800,
                fontSize: 35,
                color: Colors.white),
          ),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                            color: Colors.black, style: BorderStyle.solid)),
                    labelText: 'Name',
                    hintText: 'Enter Your Name',
                    prefix: Icon(
                      Icons.person,
                      size: 20,
                      color: Colors.black,
                    ),
                    fillColor: Colors.white,
                    filled: true),
                onChanged: (value) {
                  print("Hitu :$value");
                  a = int.parse(value) ?? 0;
                },
              ),
              // Spacer( ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                          color: Colors.black, style: BorderStyle.solid)),
                  labelText: 'Email',
                  hintText: 'Enter Your Email',
                  prefix: Icon(
                    Icons.email,
                    size: 20,
                  ),
                ),
                onChanged: (value) {
                  b = int.parse(value) ?? 0;
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                          color: Colors.black, style: BorderStyle.solid)),
                  labelText: 'Password',
                  hintText: 'Enter Your Password',
                  prefix: Icon(
                    Icons.lock,
                    size: 20,
                  ),
                ),
                onChanged: (value) {
                  c = int.tryParse(value) ?? 0;
                },
              ),
              SizedBox(
                height: 8,
              ),

              SizedBox(
                width:double.infinity,
                height: 44,
                child: ElevatedButton(
                  onPressed: (){
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Center(child: Text("${a + b + c}")))
                    );
                  },
                  child: Text('Submit'),
                ),
              ),
            ],
          ),
        ));
  }

  void sum() {
    print("${a + b + c}");
  }
}
