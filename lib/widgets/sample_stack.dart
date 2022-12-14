import 'package:flutter/material.dart';

class SampleStack extends StatelessWidget {
  const SampleStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('belajar stack'),
      ),
      body: Stack(
        // alignment: Alignment.bottomCenter,
        children: [
          Positioned(
            right: 0,
            top: 0,
            child: Container(
              height: 230,
              width: 230,
              color: Colors.green,
            ),
          ),
          Positioned(
            left: 100,
            top: 0,
            child: Container(
              height: 150,
              width: 150,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
