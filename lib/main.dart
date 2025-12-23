import 'package:flutter/material.dart';

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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
      ),
      body: 
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                        Container(
                          margin: const EdgeInsets.only(right:6),
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.purple, Colors.pink],
                            ),
                            borderRadius: BorderRadius.circular(62),
                          ),
                          child: const Text("Hello, Flutter!"),
                        ),

                        Container(
                          margin: const EdgeInsets.all(6),
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.blue, Colors.cyan],
                            ),
                            borderRadius: BorderRadius.circular(62),
                          ),
                          child: const Text("Hello, Flutter!"),
                        ),

                        Container(
                          margin: const EdgeInsets.all(6),
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.green, Colors.lightGreenAccent],
                            ),
                            borderRadius: BorderRadius.circular(62),
                          ),
                          child: const Text("Hello, Flutter!"),
                        ),

                        Container(
                          margin: const EdgeInsets.only(left: 6),
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.orange, Colors.deepOrange],
                            ),
                            borderRadius: BorderRadius.circular(62),
                          ),
                          child: const Text("Hello, Flutter!"),
                        ),
                    ],
                  ),
                ),
            
                Container(
                  margin: const EdgeInsets.only(bottom: 11),
                  height: 200,
                  width: double.infinity,
                  
                  decoration: BoxDecoration( 
                    gradient: LinearGradient(
                      colors: [Colors.purple, Colors.pink],
                        ),
                    borderRadius: BorderRadius.circular(62)
                ),
                    child: const Text("Hello, Flutter!"),
                     ),
        
                    
            
                Container(
                  margin: const EdgeInsets.only(bottom: 11),
                  height: 200,
                  width: double.infinity,
                  color: Colors.yellow,
                  child: const Text("Hello, Flutter!"),
                      ),
            
                Container(
                  margin: const EdgeInsets.only(bottom: 11),
                  height: 200,
                  width: double.infinity,
                  color: Colors.orange,
                  child: const Text("Hello, Flutter!"),
                      ),
            
                Container(
                  margin: const EdgeInsets.only(bottom: 11),
                  height: 200,
                  width: double.infinity,
                  color: Colors.deepOrange,
                  child: const Text("Hello, Flutter!"),
                      ),
            
                Container(
                  margin: const EdgeInsets.only(bottom: 11),
                  height: 200,
                  width: double.infinity,
                  color: Colors.grey,
                  child: const Text("Hello, Flutter!"),
                      ),
            
               
              ],
            ),
          ),
        ),
    );
  }
}