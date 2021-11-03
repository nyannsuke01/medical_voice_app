import 'package:flutter/material.dart';

class Register extends StatelessWidget {

  String phoneNumber;
  Register(this.phoneNumber);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('登録'),
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(
                phoneNumber,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500
                ),
              ),
              Text(
                "氏名を登録",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500
                ),
              ),
              new TextField(
                decoration: InputDecoration(
                    labelText: "氏名を登録",
                    hintText: "氏名を入力してください"),
                enabled: true,
                // 入力数
                maxLength: 20,
                maxLengthEnforced: false,
                style: TextStyle(color: Colors.black54),
                obscureText: false,
                maxLines:1 ,
              ),
              Text(
                "メールアドレスを登録",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500
                ),
              ),
              new TextField(
                decoration: InputDecoration(
                    labelText: "メールアドレスを登録",
                    hintText: "Your email address"),
                enabled: true,
                // 入力数
                maxLength: 30,
                maxLengthEnforced: false,
                style: TextStyle(color: Colors.black54),
                obscureText: false,
                maxLines:1 ,
              ),
              Row(
                children: <Widget>[
                  SizedBox(width: 5,),
                  Text('おかゆ'),
                ],
              ),

              Text(
                  "登録の際には、当社の規約条件とプライバシーポリシーに同意する。"
              ),

              ElevatedButton(
                child: const Text('サインイン'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {

                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}