import 'package:flutter/material.dart';
import 'package:jwt_authentication/custom_textfield.dart';
import 'package:jwt_authentication/services/auth_services.dart';

class LoginScreen extends StatefulWidget{

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();

}

class _LoginScreenState extends State<LoginScreen>{

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final AuthService authService = AuthService();

  void loginUser(){
    authService.signInUser(
      context: context,
      email:emailController.text,
      password:passwordController.text,
    );
  }

  @override
  Widget build(BuildContext context){

    var mQ = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Login", style:TextStyle(fontSize: 30)),
          SizedBox(height: mQ.height * 0.08,),
          Container(
            margin: const EdgeInsets.symmetric(horizontal:20),
            child: CustomTextField(
              controller: emailController,
              hintText: 'Enter your email',
            ),
          ),
          const SizedBox(height: 20,),
          Container(
            margin: const EdgeInsets.symmetric(horizontal:20),
            child: CustomTextField(
              controller: passwordController,
              hintText: 'Enter your password',
            ),
          ),
          const SizedBox(height: 20,),
          ElevatedButton(
            onPressed: loginUser,
            style:ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue),
              textStyle: MaterialStateProperty.all(
                const TextStyle(color: Colors.white),
              ),
              minimumSize: MaterialStateProperty.all(
                Size(MediaQuery.of(context).size.width / 2.5, 50),
              ),
            ),
            child: const Text(
              "Login",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          )
        ],
      )
    );
  }

}