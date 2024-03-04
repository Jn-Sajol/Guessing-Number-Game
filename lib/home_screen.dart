import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('WELCOME IN APP',style: TextStyle(fontSize: 34,color: Colors.white,fontWeight: FontWeight.bold),),
              const SizedBox(height: 23,),
              const Text('Please Enter Your Name',style: TextStyle(fontSize: 24,color: Colors.white)),
              const SizedBox(height: 23,),
              const TextField(
              decoration: InputDecoration(
              border: OutlineInputBorder(
              
              )
              ),
              ),
               const SizedBox(height: 23,),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Submit"),
              )
            ],
          ),
        ));
  }
}
