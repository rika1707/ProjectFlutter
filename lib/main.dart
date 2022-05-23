import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _col = 'clic to the button';
  int _colorsl = 0;

  final List<String> _colores = [
    'red',
    'green',
    'blue',
    'yellow',
    'black',
    'purple',
    'brown',
    'orange'
  ];
  final List<int> _colors = [
    0xFFb71c1c,
    0xFF388e3c,
    0xFF0288d1,
    0xFFeeff41,
    0xFF000000,
    0xFF311b92,
    0xFF795548,
    0xFFef6c00
  ];

  void _incrementCounter() {
    setState(() {
      _counter++;
      if (_counter == 1) {
        _col = 'This is color '+_colores[0];
        _colorsl = _colors[0];
      } else if (_counter == 2) {
        _col = 'This is color '+_colores[1];
        _colorsl = _colors[1];
      } else if (_counter == 3) {
        _col = 'This is color '+_colores[2];
        _colorsl = _colors[2];
      } else if (_counter == 4) {
        _col = 'This is color '+_colores[3];
        _colorsl = _colors[3];
      } else if (_counter == 5) {
        _col = 'This is color '+_colores[4];
        _colorsl = _colors[4];
      } else if (_counter == 6) {
        _col = 'This is color '+_colores[5];
        _colorsl = _colors[5];
      } else if (_counter == 7) {
        _col = 'This is color '+_colores[6];
        _colorsl = _colors[6];
      } else if (_counter == 8) {
        _col = 'This is color '+_colores[7];
        _colorsl = _colors[7];
      } else {
        _counter = 0;
        _colorsl = 0;
        _col = 'clic to the button';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _col,
              style: TextStyle(
                color: Color(_colorsl),
                fontSize: 30,
                ),
              
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
