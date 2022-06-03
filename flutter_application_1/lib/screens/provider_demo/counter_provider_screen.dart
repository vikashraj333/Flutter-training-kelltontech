import 'counter_provider_mixin.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderCounter extends StatelessWidget {
  const ProviderCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('State Management usnig Provider'),
      ),
      body: Center(
        child: Column(
          children: const [
            Text('You have Clicked'),
            SizedBox(
              height: 10,
            ),
            Text('times')
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => context.read<Counter>().increment(),
      ),
    );
  }
}
