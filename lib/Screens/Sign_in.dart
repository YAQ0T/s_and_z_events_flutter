import 'package:flutter/material.dart';
const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {


  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    String? dropdownValue;
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
                Row(

                  children: [
                    Expanded(
                      child: TextFormField(
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

                          icon: const Icon(Icons.person),
                          iconColor: const Color(0xFF60435F),
                          labelText: 'First & last Name',
                          labelStyle: const TextStyle(
                              color: Colors.black54
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your Name';
                          }
                          return null;
                        },
                      ),
                    ),
                    Expanded(

                      child: Theme(

                        data: ThemeData(
                          primaryColor: Colors.white,


                        ),
                        child: DropdownButtonFormField<String>(

                            decoration: InputDecoration(

                              fillColor: Colors.white,
                              focusedBorder:OutlineInputBorder(
                                borderSide: const BorderSide(color: Color(0xFF60435F), width: 2.0),
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide.none
                              ),
                              icon: const Icon(Icons.location_on),
                              iconColor: const Color(0xFF60435F),
                              labelText: 'Location',
                              labelStyle: const TextStyle(
                                  color: Colors.black54
                              ),
                            ),

                          style: const TextStyle(
                              color: Colors.black
                          ),
                          borderRadius: BorderRadius.circular(25.0),



                          value: dropdownValue,
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue = newValue!;
                            });
                          },
                          items: <String>['Nablus', 'Jenin', 'Ramallah', 'Jerusalem']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      )

                    ),
                  ],
                ),


                const SizedBox(height: 25.0),
                TextFormField(
                  keyboardType: TextInputType.number,
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

                    icon: const Icon(Icons.phone),
                    iconColor: const Color(0xFF60435F),
                    labelText: 'Phone Number',
                    hintText: '+972599836658',
                    hintStyle: const TextStyle(
                        color: Colors.black54
                    ),
                    labelStyle: const TextStyle(
                        color: Colors.black54
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your phone number';
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 25.0),
                TextFormField(
                  obscureText: true,

                  cursorColor: const Color(0xff40434E),
                  style: const TextStyle(
                    color: Color(0xff070707),
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
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 25.0),
                TextFormField(
                  obscureText: true,

                  cursorColor: const Color(0xff40434E),
                  style: const TextStyle(
                    color: Color(0xff070707),
                  ),


                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      focusedBorder:OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xFF60435F), width: 2.0),
                        borderRadius: BorderRadius.circular(25.0),
                      ),

                      icon: const Icon(Icons.password),
                      iconColor: const Color(0xFF60435F),
                      labelText: 'Confirm Password',
                      labelStyle: const TextStyle(
                          color: Colors.black54
                      )
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please confirm your password';
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
