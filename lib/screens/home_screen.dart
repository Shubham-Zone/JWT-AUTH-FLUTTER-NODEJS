import 'package:flutter/material.dart';
import 'package:jwt_authentication/provider/user_provider.dart';
import 'package:jwt_authentication/services/auth_services.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget{

  const HomeScreen({super.key});

  void signOutUser(BuildContext context){
    AuthService().signOut(context);
  }

  @override
  Widget build(BuildContext context){

    final user = Provider.of<UserProvider>(context).user;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(user.id),
          const SizedBox(height: 10,),
          Text(user.email),
          const SizedBox(height: 10,),
          Text(user.name),
          const SizedBox(height: 10,),
          ElevatedButton(
            onPressed: () => signOutUser(context),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue),
              textStyle: MaterialStateProperty.all(
                const TextStyle(color: Colors.white),
              ),
              minimumSize: MaterialStateProperty.all(
                Size(MediaQuery.of(context).size.width / 2.5, 50),
              ),
            ),
            child: const Text(
              "Sign Out",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }

}