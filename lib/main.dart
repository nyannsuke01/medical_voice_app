import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_voice_app/register.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '登録',
      home: Scaffold(
        appBar: AppBar(
          title: Text('登録'),
          backgroundColor: Colors.greenAccent,
        ),
        body: Center(
          child: ChangeForm(),
        ),
      ),
    );
  }
}

class ChangeForm extends StatefulWidget {
  @override
  _ChangeFormState createState() => _ChangeFormState();
}

class _ChangeFormState extends State<ChangeForm> {

  String _text = '';

  void _handleText(String e) {
    setState(() {
      _text = e;
    });
  }

  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: <Widget>[
            Text(
              "電話番号を入力",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w500
              ),
            ),
            new TextField(
              decoration: InputDecoration(
                  labelText: "タップして入力",
                  hintText: "a phone number"),
              enabled: true,
              // 入力数
              maxLength: 20,
              maxLengthEnforced: false,
              style: TextStyle(color: Colors.black54),

              obscureText: false,
              maxLines:1 ,
              //パスワード
              onChanged: _handleText,
            ),
            Text(
              "電話番号を確認するためのコードをお送りします。 標準料金が適用されます。"
            ),
            ElevatedButton(
              child: const Text('次へ'),
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                onPrimary: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Register("$_text"),
                    )
                );
              },
            ),
          ],
        )
    );
  }
}