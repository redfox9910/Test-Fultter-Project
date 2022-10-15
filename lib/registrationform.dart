import 'package:flutter/material.dart';
import 'package:untitled/login_Screen.dart';
class RegistrationForm extends StatelessWidget {
 // const RegistrationForm({Key? key}) : super(key: key);


  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: SafeArea(

        child: Container(
          color: Colors.indigo,
          width: double.infinity,
          height: double.infinity,
          child: Padding(

            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Registration",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "please enter your name ,email and password",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    decoration:  InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),),
                      label: Text("Name"),
                      prefixIcon: Icon(Icons.person_pin),
                       fillColor: Colors.white,
                       filled: true,

                      labelStyle: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold)

                      //suffixIcon: ,
                    ),
                    keyboardType: TextInputType.name,
                    controller: emailController,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration:  InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                      label: Text("Email"),
                      prefixIcon: Icon(Icons.email_outlined),
                       fillColor: Colors.white,
                       filled: true,
                        labelStyle: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),

                      //suffixIcon: ,
                    ),
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration:  InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                      label: Text("Password"),
                      prefixIcon: Icon(Icons.lock),
                       fillColor: Colors.white,
                       filled: true,
                        labelStyle: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),

                        suffixIcon: Icon(Icons.remove_red_eye),
                    ),
                    obscureText: false,
                    keyboardType: TextInputType.emailAddress,
                    controller: passwordController,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                      width: double.infinity,
                      color: Colors.blue,
                      child: MaterialButton(
                        onPressed: () {},
                        child: const Text(
                          "Registration",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "have an account?",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginScreen()),
                        );
                      }, child: const Text("Login"))
                    ],
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
