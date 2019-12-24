import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextStyle _textStyle = TextStyle(fontSize: 25);
  int _numTaps = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Número de taps: ', style: _textStyle),
              Text(
                '$_numTaps',
                style: _textStyle,
              )
            ],
          ),
        ),
        floatingActionButton: _createFloatingActionButtons());
  }

  Widget _createFloatingActionButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(
          width: 30.0,
        ),
        FloatingActionButton(
            child: Icon(Icons.exposure_zero), onPressed: _restart),
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.remove), onPressed: _substract),
        SizedBox(
          width: 5.0,
        ),
        FloatingActionButton(child: Icon(Icons.add), onPressed: _add)
      ],
    );
  }

  void _add() {
    setState(() {
      _numTaps++;
    });
  }

  void _substract() {
    setState(() {
      _numTaps--;
    });
  }

  void _restart() {
    setState(() {
      _numTaps = 0;
    });
  }
}
