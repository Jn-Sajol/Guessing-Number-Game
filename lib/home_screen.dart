import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:guessnumber/guess_number.dart';

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
              filled: true,
              fillColor: Color.fromARGB(73, 251, 251, 251),
              border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(13))
              )
              ),
              ),
               const SizedBox(height: 23,),
              ElevatedButton(
              style: const  ButtonStyle(
              padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                // shape: MaterialStateProperty.all(OutlinedBorder()),
              ),
                onPressed: () {
                Navigator.push(context, 
                MaterialPageRoute(builder: (context)=> const GuessNumber())
                );
                },
                child: const Text("Submit",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
              )
            ],
          ),
        ));
  }
}
