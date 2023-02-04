import 'package:flutter/material.dart';

class MyAnimatedButton extends StatefulWidget {
  const MyAnimatedButton({super.key});

  @override
  State<MyAnimatedButton> createState() => _MyAnimatedButtonState();
}

class _MyAnimatedButtonState extends State<MyAnimatedButton> {
  var btn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            setState(() {
              btn = true;
            });
          },
          child: AnimatedContainer(
            alignment: Alignment.center,
            duration: const Duration(seconds: 1),
            width: btn ? 40 : 120,
            height: 40,
            decoration: BoxDecoration(
              color: btn ? Colors.green : Colors.red,
              borderRadius:
                  btn ? BorderRadius.circular(40) : BorderRadius.circular(20),
            ),
            child: btn
                ? const Icon(Icons.done, color: Colors.white)
                : const Text(
                    'Payment',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
