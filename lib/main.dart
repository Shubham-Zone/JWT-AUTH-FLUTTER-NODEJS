import 'package:flutter/material.dart';
import 'package:jwt_authentication/provider/user_provider.dart';
import 'package:jwt_authentication/screens/home_screen.dart';
import 'package:jwt_authentication/screens/signup_screen.dart';
import 'package:jwt_authentication/services/auth_services.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>UserProvider()),
      ],
      child:const MyApp()
    )
  );
}

class MyApp extends StatefulWidget {
  
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final AuthService authService = AuthService();

  @override
  void initState() {
    super.initState();
    authService.getUserData(context);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Provider.of<UserProvider>(context).user.token.isEmpty ? const SignupScreen() : const HomeScreen(),
    );
  }
}
