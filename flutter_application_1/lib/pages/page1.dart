import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/page2.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() {
    debugPrint('1. Page1 - CreateState Invoked');
    return _Page1State();
  }
}

class _Page1State extends State<Page1> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    debugPrint('2. Page 1 - InitState Invoked');
    setState(() {
      _counter = 0;
      debugPrint('3. Page 1 - SetState Within the InitState Invoked');
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    debugPrint('4. Page 1 - DidChangeDependencies Invoked');
  }

  @override
  void didUpdateWidget(Page1 oldWidget) {
    super.didUpdateWidget(oldWidget);
    debugPrint('5. Page 1 - DidUpdateWidget Invoked');
  }

  @override
  void deactivate() {
    super.deactivate();
    debugPrint('6. Page 1 - DeActivate Invoked');
  }

  @override
  void dispose() {
    super.dispose();
    debugPrint('7. Page 1 - Dispose Invoked');
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('8: Page 1 - Build Invoked');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lifecycle Activity Demo - Page1'),
      ),
      body: Column(
        children: [
          const Text('You have clicked'),
          Text(
            _counter.toString(),
            style: const TextStyle(fontSize: 30),
          ),
          const Text('Times'),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => const Page2()),
                ),
              );
            },
            child: const Text('Go To Next Page'),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            debugPrint('9. Page 1 - setState within the Build Method Invoked');
            _counter++;
          });
        },
      ),
    );
  }
}
