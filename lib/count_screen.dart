import 'package:flutter/material.dart';

class CounterFull extends StatefulWidget {
  const CounterFull({Key? key}) : super(key: key);

  @override
  State<CounterFull> createState() => _CounterFullState();
}

class _CounterFullState extends State<CounterFull> {
   int count = 10;
  @override
  Widget build(BuildContext context) {
    const sizeText = TextStyle(fontSize: 32, color: Colors.green);
    return Scaffold(
        appBar: AppBar(
          elevation: 8.0,
          backgroundColor: Colors.red,
          title: const Text('Counter Flutter'),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Number Push',
                    style: TextStyle(
                      fontSize: 32.0,
                      color: Colors.red,
                    )),
                Text('$count', style: sizeText),
              ]),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              count++;
            });
            showMessage();
          },
          child: const Icon(Icons.check),
        ));
  }

  void showMessage() {
    print('Hi, Again');
  }
}
