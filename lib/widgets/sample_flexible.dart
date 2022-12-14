import 'package:flutter/material.dart';

class SampleFlexible extends StatelessWidget {
  const SampleFlexible({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar Flexible & Expanded'),
      ),
      body: Row(
        children: [
          Expanded(child: _sampleBox()),
          Expanded(child: _sampleBox()),
          _sampleBox(),
        ],
      ),
    );
  }
}

Widget _sampleBox() {
  return Container(
    width: 50,
    height: 50,
    decoration: BoxDecoration(
      border: Border.all(),
      color: Colors.black26,
    ),
  );
}


// Row(
//         children: [
//           Flexible(
//             flex: 4,
//             fit: FlexFit.tight,
//             child: _sampleBox(),
//           ),
//           Flexible(
//             flex: 1,
//             fit: FlexFit.tight,
//             child: _sampleBox(),
//           ),
//           Flexible(
//             flex: 1,
//             fit: FlexFit.tight,
//             child: _sampleBox(),
//           ),
//         ],
//       ),