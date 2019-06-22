import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget{
  @override
  State createState() => new _State();
}

class _State extends State<MyApp>{

  bool _value1 = false;
  bool _value2 = false;
  bool _value3 = false;
  bool _value4 = false;

  //ragam penulisan
  void _value1Changed(bool value) => setState(()=>_value1=value);
  void _value2Changed(bool value) => setState(()=>_value2=value);

  void _value3Changed(bool value){
    setState(() {
    _value3 = value;
    });
  }
  void _value4Changed(bool value){
    setState(() {
    _value4 = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('M. Fadli Zein'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              //simple checkbox
              new Checkbox(
                value:_value1,
                onChanged: _value1Changed,
              ),
              new Checkbox(
                value: _value2,
                onChanged: _value2Changed,
              ),
              //good checkbox
              new CheckboxListTile(
                value: _value3,
                onChanged: _value3Changed,
                title: new Text('Hello Pai'),
                controlAffinity: ListTileControlAffinity.leading,
                subtitle: new Text('A programmer'),
                secondary: new Icon(Icons.archive),
                activeColor: Colors.red,
              ),
              new CheckboxListTile(
                value: _value4,
                onChanged: _value4Changed,
                title: new Text('Hello Zein'),
                controlAffinity: ListTileControlAffinity.leading,
                subtitle: new Text('A Flutter Dev'),
                secondary: new Icon(Icons.archive),
                //centang akan berwarna merah
                activeColor: Colors.red,
              )
            ],
          ),
        ),
      ),
    );
  }
}