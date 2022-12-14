import 'package:flutter/material.dart';

class SampleListView extends StatelessWidget {
  SampleListView({super.key});

  final List colorCodes = [900, 800, 700, 600, 500, 400, 300, 200, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar listview'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Container(
            height: 50,
            color: Colors.yellow[colorCodes[index]],
          );
        },
        itemCount: colorCodes.length,
        separatorBuilder: (context, index) {
          return const Divider();
        },
      ),
    );
  }
}
