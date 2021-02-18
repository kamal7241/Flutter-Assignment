import 'package:flutter/material.dart';

import 'home.dart';

class MyForm extends StatefulWidget {

  @override
  _FormState createState() {
    return _FormState();
  }
}

class _FormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(
                    Icons.email,
                    size: 35,
                  ),
                  hintText: 'ex: anything@gmail.com',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
                  labelText: 'email *',
                  labelStyle: TextStyle(color: Colors.grey, fontSize: 20),
                ),
                style: TextStyle(color: Colors.black, fontSize: 25),
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value.isEmpty) {
                    return 'please enter email';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.lock, size: 35),
                  hintText: "type your password",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
                  labelText: 'password *',
                  labelStyle: TextStyle(color: Colors.grey, fontSize: 20),
                ),
                style: TextStyle(color: Colors.black, fontSize: 25),
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value.isEmpty) {
                    return 'please enter password';
                  }
                  return null;
                },
                obscureText: true,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment(0, 0),
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blue,
                    // border: Border(
                    //   left: BorderSide(
                    //     color: Colors.green,
                    //     width: 10,
                    //   ),
                    // ),
                  ),
                  child: FlatButton(
                    onPressed: () {
                      // Validate returns true if the form is valid, otherwise false.
                      if (_formKey.currentState.validate()) {
                        // If the form is valid, display a snackbar. In the real world,
                        // you'd often call a server or save the information in a database.
                        //   Scaffold.of(context)
                        //       .showSnackBar(SnackBar(content: Text('Processing Data')));
                        // }
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Home(),
                        )
                        );
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Text(
                        'Submit',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("not an account"),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Text(
                      "Register",
                      style: TextStyle(color: Colors.blue),
                    ),
                  )
                ],
              ),
            ],
          )),
    );
  }
}
