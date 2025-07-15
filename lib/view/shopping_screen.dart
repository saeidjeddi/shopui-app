import 'package:flutter/material.dart';

class Shopping extends StatelessWidget {
  const Shopping({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping App'),
        actions: [
          IconButton(
            icon: const Icon(Icons.shop),
            onPressed: () {
              // Add your shopping cart action here
            },
          ),
        ],
      ),
      body: const Center(
        child: Text('Welcome to the Shopping App!'),
      ),
    );
  }
}