import 'package:flutter/material.dart';
class pertemuan1 extends StatefulWidget {
  pertemuan1({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _pertemuan1State createState() => _pertemuan1State();
}

class _pertemuan1State extends State<pertemuan1> {


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
            TextFormField(
                decoration: new InputDecoration(
                    labelText: 'Test Input',
                    hintText: 'Teks yang akan diinput formatnya adalah sbb',
                    border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(5),
                    )
                )
            ),
            Padding(
              padding: EdgeInsets.all(5.0),
            ),
            TextFormField(
                decoration: new InputDecoration(
                    labelText: 'Test Input',
                    hintText: 'Teks yang akan diinput formatnya adalah sbb',
                    border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(5),
                    )
                )
            ),
            RaisedButton(
              focusColor: Colors.blue,
              child: Text(
                "SIMPAN",
                style: TextStyle(
                    color: Colors.white
                ),
              ),
            )
          ],
        ),
      ),
      //floatingActionButton: FloatingActionButton(
      //onPressed: _incrementCounter,
      //tooltip: 'Increment',
      //child: Icon(Icons.add),
      //),
    );
  }
}