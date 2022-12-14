import 'package:flutter/material.dart';

class SampleDialog extends StatefulWidget {
  const SampleDialog({super.key});

  @override
  State<SampleDialog> createState() => _SampleDialogState();
}

class _SampleDialogState extends State<SampleDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar dialog'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: showAlertDialog,
            child: const Text('Show Alert Dialog'),
          ),
          ElevatedButton(
            onPressed: showMyBottomSheet,
            child: const Text('Show Bottom Sheet'),
          ),
        ],
      ),
    );
  }

  void showAlertDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Peringatan'),
            content: const Text('Ini Content Peringatannya'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Ok'),
              ),
            ],
          );
        });
  }

  showMyBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return const SizedBox(
            height: 200,
            child: Text('Ini adalah bottom sheet'),
          );
        });
  }
}
