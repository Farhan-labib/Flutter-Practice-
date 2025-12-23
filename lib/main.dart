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
                        height: 150,
                        width: 110,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.purple, Colors.pink],
                          ),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(62),
                              topRight: Radius.circular(2),
                              bottomLeft: Radius.circular(2),
                              bottomRight: Radius.circular(62),
                            ),
                        ),
                        child: const Text(""),
                      ),

                      Container(
                        margin: const EdgeInsets.only(right:6),
                        height: 150,
                        width: 110,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.blue, Colors.cyan],
                          ),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(62),
                              topRight: Radius.circular(2),
                              bottomLeft: Radius.circular(2),
                              bottomRight: Radius.circular(62),
                            ),
                        ),
                        child: const Text(""),
                      ),

                      Container(
                        margin: const EdgeInsets.only(right:6),
                        height: 150,
                        width: 110,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.green, Colors.lightGreenAccent],
                          ),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(62),
                              topRight: Radius.circular(2),
                              bottomLeft: Radius.circular(2),
                              bottomRight: Radius.circular(62),
                            ),
                        ),
                        child: const Text(""),
                      ),

                      Container(
                        margin: const EdgeInsets.only(right:6),
                        height: 150,
                        width: 110,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.orange, Colors.deepOrange],
                          ),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(62),
                              topRight: Radius.circular(2),
                              bottomLeft: Radius.circular(2),
                              bottomRight: Radius.circular(62),
                            ),
                        ),
                        child: const Text(""),
                      ),
                    ],
                  ),
                ),
            
                
        
                    
            
                Container(
                  margin: const EdgeInsets.only(bottom: 11),
                  height: 900,
                  width: double.infinity,
                  decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.lightBlue, Colors.red],
                            ),
                            borderRadius: BorderRadius.circular(62)
                          ),
                  child: const Text(""),
                      ),
            
                
            
               
              ],
            ),
          ),
        ),
    );
  }
}