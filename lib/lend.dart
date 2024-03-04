import 'package:flutter/material.dart';
import 'package:guessnumber/genarate_number.dart';

class LendingPage extends StatelessWidget {
  const LendingPage({super.key});

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
            const Text(
              'Now, Please Take loan that Same Number From your Friend 🤝 And Add these two Number!',
              style: TextStyle(
                  fontSize: 34,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
             const SizedBox(
              height: 23,
            ),
            const Text('Hints: Supppose You Have Taken 3, So now you should take 3 from your friend',
                style: TextStyle(fontSize: 10, color: Colors.white)),
            const SizedBox(
              height: 23,
            ),
            const Text('After Taking Number Please Press Next Button.',
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GenarateNumberPage()));
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
