import 'package:flutter/material.dart';
import 'package:guessnumber/result.dart';

class ReturnNumberPage extends StatelessWidget {
  const ReturnNumberPage({super.key});

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
              'Now, give back to your friend what Number you took from him from your Total Number!',
              style: TextStyle(
                  fontSize: 34,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 23,
            ),
            const Text('After Return Back, Please Press Next Button and see the magic.',
                style: TextStyle(
                    fontSize: 14, color: Color.fromARGB(255, 122, 108, 108))),
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
                        builder: (context) => const ResultPage()));
              },
              child: const Text(
                "See Magic 😜",
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
