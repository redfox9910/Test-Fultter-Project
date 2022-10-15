import 'package:flutter/material.dart';
import 'package:untitled/messenger_Screen.dart';
import 'package:untitled/registrationform.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailCon = TextEditingController();

  var passwordCon = TextEditingController();

  bool obsPassword = true;

  Icon passIcon = Icon(Icons.visibility_off_rounded);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Container(
        color: Colors.indigo,
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                const Text(
                  "test app",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Colors.white),
                ),

                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "Login Screen",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.black87),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  width: 300,
                  child: const Text(
                    "Email",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black87,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0)),
                    labelText: "email",
                    prefixIcon: const Icon(Icons.email_outlined),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  // to select what this field for
                  /*  onFieldSubmitted:(value){               //to make event when submitted
                  print(value);

                    },
                    onChanged:(value){               //to make event when any change happen
                      print(value);

                    },*/
                  controller: emailCon,
                ), // email
                Container(
                  width: 300,
                  child: const Text(
                    "Password",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black87,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    hintText: "enter your Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    prefixIcon: const Icon(Icons.lock_rounded),
                    suffixIcon: IconButton(
                      icon: passIcon,
                      //color: Colors.indigo,
                      onPressed: () {
                        setState(() {
                          if(obsPassword==true){
                            obsPassword = false;
                            passIcon = Icon(Icons.visibility,color: Colors.white,);

                          }  else  {

                            obsPassword= true;
                            passIcon=Icon(Icons.visibility_off_rounded,color: Colors.white,);
                          }
                        });

                      },
                    ) ,
                  ),
                  controller: passwordCon,
                  obscureText: obsPassword,
                ), // password
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {
                    if (emailCon.text == "fox" && passwordCon.text == "99") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MessngerScreen()),
                      );
                    } else {
                      showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text(
                            'Login',
                            style: TextStyle(color: Colors.indigoAccent),
                          ),
                          backgroundColor: Colors.black12,
                          icon: const Icon(Icons.error_outline_rounded,
                              color: Colors.red),
                          content: const Text(
                            'wrong  username or password !',
                            style: TextStyle(color: Colors.indigoAccent),
                          ),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'OK'),
                              child: const Text(
                                'OK',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                      );
                    }
                  },

                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  child: const Text(
                    'LogIn',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  // color: ,
                ),
                const SizedBox(
                  height: 30,
                ),
                TextButton(
                  onPressed: () {},

                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.indigo),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  child: const Text(
                    'Forget Password?',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  // color: ,
                ),
                const Text(
                  "or",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.black87),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegistrationForm()),
                          );
                        },
                        child: const Text(
                          "Register",
                          style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
