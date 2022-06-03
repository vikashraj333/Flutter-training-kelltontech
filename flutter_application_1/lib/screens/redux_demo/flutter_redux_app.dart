import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';

enum Actions { increament, decreament }

int counterReducer(int state, dynamic action) {
  if (action == Actions.increament) {
    return state + 1;
  } else if (action == Actions.decreament) {
    return state - 1;
  }
  return state;
}

class FlutterReduxApp extends StatelessWidget {
  final Store<int> store;

  const FlutterReduxApp({Key? key, required this.store}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreProvider<int>(
      store: store,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text('State Management using redux'),
          ),
          body: Container(
            color: Colors.blueGrey,
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                    child: const Text('You have clicked button'),
                  ),
                  SizedBox(
                    height: 30,
                    child: StoreConnector<int, String>(
                        builder: (context, counter) {
                          return Text(
                            counter,
                            style: const TextStyle(fontSize: 30.0),
                          );
                        },
                        converter: (store) => store.state.toString()),
                  ),
                  const SizedBox(
                    height: 30,
                    child: Text('times'),
                  )
                ],
              ),
            ),
          ),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              StoreConnector<int, VoidCallback>(
                builder: (context, callback) {
                  return FloatingActionButton(
                    onPressed: callback,
                    child: const Icon(Icons.add),
                  );
                },
                converter: (store) {
                  return () => store.dispatch(Actions.increament);
                },
              ),
              const SizedBox(
                width: 20,
              ),
              StoreConnector<int, VoidCallback>(
                builder: (context, callback) {
                  return FloatingActionButton(
                    onPressed: callback,
                    child: const Icon(Icons.remove),
                  );
                },
                converter: (store) {
                  return () => store.dispatch(Actions.decreament);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
