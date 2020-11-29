import 'package:flutter/material.dart';
import 'package:flutter_progmob_2020/Login.dart';
import 'package:flutter_progmob_2020/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TugasPertemuan8 extends StatefulWidget {
  TugasPertemuan8({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _TugasPertemuan8State createState() => _TugasPertemuan8State();
}

class _TugasPertemuan8State extends State<TugasPertemuan8> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  void validate(){
    if(formkey.currentState.validate()){
      print("validated");
    }else{
      print("failed");
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Tugas Pertemuan 8"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Form(
            key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
             children: <Widget>[
            TextFormField(
              validator: (value){
                if(value.isEmpty){
                  return "Nama tidak boleh kosong";
                    }else{
                  return null;
                    }
                    },
              decoration: new InputDecoration(
               icon: Icon(
                Icons.people,
                color: Colors.blue,
                ),
                  labelText: "Nama Lengkap",
                  hintText: "Contoh : Jessy Friska",
                  border:  OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(5),
              )
              ),
            ),
            RaisedButton(
              child: Text(
                "SIMPAN",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              onPressed: () {
                if (formkey.currentState.validate()) {}
              },
            ),
               RaisedButton(
                 color: Colors.blue,
                 onPressed: () async {
                   SharedPreferences pref = await SharedPreferences.getInstance();
                   await pref.setInt("is_login", 0);
                   Navigator.pushReplacement(
                     context,
                     MaterialPageRoute(builder: (context) => Login()),
                   );
                 },
                 child: Text(
                   "Logout",
                   style: TextStyle(
                       color: Colors.white
                   ),
                 ),
               )

          ],
        ),
      ),
    ),
      ),
    );
  }
}