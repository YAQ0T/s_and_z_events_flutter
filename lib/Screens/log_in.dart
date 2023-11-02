import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDF7FA),
      appBar: AppBar(
        backgroundColor: const Color(0xFF60435F),
        title: const Text("S&Z Events",
        style: TextStyle(
          color: Color(0xFFFDF7FA),
        ),
        ),
        elevation: 0.0,
        centerTitle: true,
      ),
      body:  Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField(
                  cursorColor: const Color(0xff40434E),
                  style: const TextStyle(
                    color:  Colors.black,
                  ),


                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    focusedBorder:OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xFF60435F), width: 2.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),

                    icon: const Icon(Icons.phone),
                    iconColor: const Color(0xFF60435F),
                    labelText: 'Phone Number',
                    labelStyle: const TextStyle(
                      color: Colors.black54
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                    },
                ),

                const SizedBox(height: 25.0),

                TextFormField(
                  obscureText: true,

                  cursorColor: const Color(0xff40434E),
                  style: const TextStyle(
                    color: Colors.black,
                  ),


                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      focusedBorder:OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xFF60435F), width: 2.0),
                        borderRadius: BorderRadius.circular(25.0),
                      ),

                      icon: const Icon(Icons.password),
                      iconColor: const Color(0xFF60435F),
                      labelText: 'Password',
                      labelStyle: const TextStyle(
                          color: Colors.black54
                      )
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF60435F), // background (button) color
                        foregroundColor: const Color(0xFFFDF7FA), // foreground (text) color
                        fixedSize: const Size(130, 30)

                        ),

                      onPressed: () {
                        // Validate returns true if the form is valid, or false otherwise.
                        if (_formKey.currentState!.validate()) {
                          // If the form is valid, display a snackbar. In the real world,
                          // you'd often call a server or save the information in a database.
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Processing Data')),
                          );
                        }
                      },
                      child: const Text('Submit'),
                    ),
                  ),
                ),
              ]
          ),
        ),
      ),
    );
  }
}
