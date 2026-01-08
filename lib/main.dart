import 'package:flutter/material.dart';
import 'screens/signup_page.dart';
import 'screens/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: SplashPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var emailtext = TextEditingController();
  var passwordtext = TextEditingController();
  bool _isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/logo/logo.png',
              height: 100,
              fit: BoxFit.contain,
            ),
            Center(
              child: SizedBox(
                height: 400,
                width: 300,
                child: Card(
                  shadowColor: Colors.purple,
                  elevation: 7,
                  margin: EdgeInsets.all(16),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("Welcome Back", style: Theme.of(context).textTheme.headlineMedium),
                        SizedBox(height: 16.0),
                        TextField(
                          controller: emailtext,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.0),
                              borderSide: BorderSide(color: Colors.purple),
                            ),
                            prefixIcon: Icon(Icons.email),
                            labelText: 'Enter Email',
                          ),
                        ),
                        SizedBox(height: 16.0),
                        TextField(
                          controller: passwordtext,
                          obscureText: !_isPasswordVisible,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.0),
                              borderSide: BorderSide(color: Colors.purple),
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(_isPasswordVisible ? Icons.visibility_off : Icons.visibility),
                              onPressed: () {
                                setState(() {
                                  _isPasswordVisible = !_isPasswordVisible;
                                });
                              },
                            ),
                            labelText: 'Enter Password',
                          ),
                        ),
                        SizedBox(height: 16.0),
                        ElevatedButton(
                          onPressed: () {
                            String email = emailtext.text.toString();
                            String password = passwordtext.text.toString();
                            print("email: $email");
                            print("password: $password");
                          },
                          child: Text('LOGIN', style: TextStyle(fontSize: 16, color: Colors.blue, fontWeight: FontWeight.bold),),
                        ),
                        SizedBox(height: 6.0),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage()));
                          },
                          child: Text("Create Account")),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}