import 'package:flutter/material.dart';

class SampleGrid extends StatelessWidget {
  SampleGrid({super.key});

  final List colorCodes = [900, 800, 700, 600, 500, 400, 300, 200, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar Gridview'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(4),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
          ),
          itemBuilder: (context, index) {
            return Container(
              color: Colors.purple[colorCodes[index]],
            );
          },
          itemCount: colorCodes.length,
        ),
        // GridView.count(
        //   scrollDirection: Axis.horizontal,
        //   crossAxisCount: 4,
        //   mainAxisSpacing: 4,
        //   crossAxisSpacing: 4,
        //   children: [
        //     Container(
        //       color: Colors.purple,
        //     ),
        //     Container(
        //       color: Colors.green,
        //     ),
        //     Container(
        //       color: Colors.red,
        //     ),
        //     Container(
        //       color: Colors.blue,
        //     ),
        //     Container(
        //       color: Colors.purple,
        //     ),
        //     Container(
        //       color: Colors.green,
        //     ),
        //     Container(
        //       color: Colors.red,
        //     ),
        //     Container(
        //       color: Colors.blue,
        //     ),
        //     Container(
        //       color: Colors.purple,
        //     ),
        //     Container(
        //       color: Colors.green,
        //     ),
        //     Container(
        //       color: Colors.red,
        //     ),
        //     Container(
        //       color: Colors.blue,
        //     ),
        //     Container(
        //       color: Colors.purple,
        //     ),
        //     Container(
        //       color: Colors.green,
        //     ),
        //     Container(
        //       color: Colors.red,
        //     ),
        //     Container(
        //       color: Colors.blue,
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
