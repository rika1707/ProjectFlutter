import 'package:flutter/material.dart';

void main() => const MyColorsPage(title: '',);

class MyColorsPage extends StatefulWidget {
  const MyColorsPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyColorsPage> createState() => _MyColorsPageState();
}

class _MyColorsPageState extends State<MyColorsPage> {
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
        _col = 'This is color ' + _colores[0];
        _colorsl = _colors[0];
      } else if (_counter == 2) {
        _col = 'This is color ' + _colores[1];
        _colorsl = _colors[1];
      } else if (_counter == 3) {
        _col = 'This is color ' + _colores[2];
        _colorsl = _colors[2];
      } else if (_counter == 4) {
        _col = 'This is color ' + _colores[3];
        _colorsl = _colors[3];
      } else if (_counter == 5) {
        _col = 'This is color ' + _colores[4];
        _colorsl = _colors[4];
      } else if (_counter == 6) {
        _col = 'This is color ' + _colores[5];
        _colorsl = _colors[5];
      } else if (_counter == 7) {
        _col = 'This is color ' + _colores[6];
        _colorsl = _colors[6];
      } else if (_counter == 8) {
        _col = 'This is color ' + _colores[7];
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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
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
