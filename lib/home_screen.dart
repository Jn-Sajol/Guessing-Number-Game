import 'package:flutter/material.dart';
import 'package:guessnumber/guess_number.dart';
import 'package:guessnumber/provider/provider.dart';
import 'package:provider_base_tools/provider_base_tools.dart';

class HomeScreen extends StatelessWidget {
 HomeScreen({super.key});
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
  final namePro = Provider.of<Result>(context);
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'WELCOME IN APP',
            style: TextStyle(
                fontSize: 34, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 23,
          ),
          const Text('Please Enter Your Name',
              style: TextStyle(fontSize: 24, color: Colors.white)),
          const SizedBox(
            height: 23,
          ),
           TextField(
            decoration:const  InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(73, 251, 251, 251),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(13)))),
                    controller:textController,
          ),
          const SizedBox(
            height: 23,
          ),
          ElevatedButton(
            style: const ButtonStyle(
              padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
              // shape: MaterialStateProperty.all(OutlinedBorder()),
            ),
            onPressed: () {
            namePro.name = textController.text;
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const GuessNumber()));
            },
            child: const Text(
              "Submit",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    ));
  }
}
