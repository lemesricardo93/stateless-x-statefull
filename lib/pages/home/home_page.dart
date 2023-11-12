import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(''),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed('/stateless'),
              child: const Text('Tela StateLess'),
            ),
            const SizedBox(width: 20),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed('/statefull'),
              child: const Text('Tela StateFull'),
            ),
          ],
        ));
  }
}
