import 'package:flutter/material.dart';
import 'package:guessnumber/return-number.dart';

class DividingPage extends StatelessWidget {
  const DividingPage({super.key});

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
              'Now, Make Half or Divide by 2 of your Total Number!',
              style: TextStyle(
                  fontSize: 34,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 23,
            ),
             const Text('Hints: Supppose Your total number 6, So now you should divide (/) by 2',
                style: TextStyle(fontSize: 10, color: Colors.white)),
            const SizedBox(
              height: 23,
            ),
            const Text('After Dividing Number Please Press Next Button.',
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
                        builder: (context) => const ReturnNumberPage()));
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
