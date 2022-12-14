import 'package:flutter/material.dart';

class SampleCard extends StatelessWidget {
  const SampleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar card widget'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          elevation: 5,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const ListTile(
                leading: Icon(Icons.album),
                title: Text('Indonesia Raya'),
                subtitle: Text('Kumpulan lagu lagu nasional'),
              ),
              const Divider(
                height: 2,
                thickness: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text('Pinjam'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Beli'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
