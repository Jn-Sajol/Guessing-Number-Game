import 'dart:math';

import 'package:flutter/material.dart';
import 'package:guessnumber/dividing.dart';
import 'package:guessnumber/provider/provider.dart';
import 'package:provider_base_tools/provider_base_tools.dart';

class GenarateNumberPage extends StatelessWidget {
  const GenarateNumberPage({super.key});

  @override
  Widget build(BuildContext context) {
    Random random = Random();
    // Generate a random number between 1 and 10000
    int randomNumber = random.nextInt(10000) + 1;

    final res = Provider.of<Result>(context);
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,

          children: [
             Text(
              'Now, I am Giving You $randomNumber . Now you have to Add your previous additional Result Number',
              style: const TextStyle(
                  fontSize: 34,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 23,
            ),
             Text('Hints: Supppose You Have 6 , So now you should add (+) with $randomNumber',
                style: const TextStyle(fontSize: 10, color: Colors.white)),
            const SizedBox(
              height: 23,
            ),
            const Text('After Adding Number Please Press Next Button.',
                style: TextStyle(fontSize: 14, color: Color.fromARGB(255, 122, 108, 108))),
            const SizedBox(
              height: 23,
            ),
            ElevatedButton(
              style: const ButtonStyle(
                padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                // shape: MaterialStateProperty.all(OutlinedBorder()),
              ),
              onPressed: () {
              res.result = randomNumber;
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DividingPage()));
              },
              child: const Text(
                "Next",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
