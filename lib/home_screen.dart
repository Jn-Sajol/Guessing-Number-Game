import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    body: Column(
    children: [
    const Text('Please Enter Your Name'),
    const TextField(),
    ElevatedButton(
    onPressed: (){}, 
    child: const Text("Submit"),
    )
    ],
    )
    );
  }
}