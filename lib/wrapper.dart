import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'screens/dashboard_page.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(body: Center(child: CircularProgressIndicator()));
        } else if (snapshot.hasError) {
          return const Scaffold(body: Center(child: Text('Something went wrong')));
        } else if (snapshot.hasData && snapshot.data != null) {
          // User is logged in, show dashboard
          return const DashboardPage();
        } else {
          // User is not logged in, show login
          return const MyHomePage();
        }
      },
    );
  }
}