import 'package:flutter/material.dart';
import 'package:guessnumber/lend.dart';
import 'package:guessnumber/provider/provider.dart';
import 'package:provider_base_tools/provider_base_tools.dart';

class GuessNumber extends StatelessWidget {
  const GuessNumber({super.key});

  @override
  Widget build(BuildContext context) {
  final name = Provider.of<Result>(context);
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(25),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,

          children: [
             Text(
              'Hey ${name.name}!',
              style: const TextStyle(
                  fontSize: 34,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 23,
            ),
            const Text('Please Take a Random Number in Your Mind🧠🧠.',
                style: TextStyle(fontSize: 24, color: Colors.white)),
            const Text('After Taking Number Please Press Next Button.',
                style: TextStyle(fontSize: 14, color: Color.fromARGB(255, 122, 108, 108))),
            const SizedBox(
              height: 23,
            ),
            ElevatedButton(
              style: const ButtonStyle(
                padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LendingPage()));
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
