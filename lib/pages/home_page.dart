import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text('Bluetooth mouse'),
            SizedBox(
              width: 200,
              child: TextField(
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly,
                ],
              ),
            ),
            ElevatedButton(
              onPressed: (){
                print('Check price');
              },
              child: const Text('Check'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue
              ),
            )
          ],
        ),
      ),
    );
  }
}