import 'package:flutter/material.dart';
import 'package:guessnumber/lend.dart';
class GuessNumber extends StatelessWidget {
  const GuessNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Center(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            
              children: [
                const Text('Hey Name',style: TextStyle(fontSize: 34,color: Colors.white,fontWeight: FontWeight.bold),),
                const SizedBox(height: 23,),
                const Text('Please Enter Your Name',style: TextStyle(fontSize: 24,color: Colors.white)),
                const SizedBox(height: 23,),
                ElevatedButton(
                style: const  ButtonStyle(
                padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                  // shape: MaterialStateProperty.all(OutlinedBorder()),
                ),
                  onPressed: () {
                  Navigator.push(context, 
                MaterialPageRoute(builder: (context)=> const LendingPage())
                );
                  },
                  child: const Text("Next",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                )
              ],
            ),
          ),
        ));
  }
}
