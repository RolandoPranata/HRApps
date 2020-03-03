import 'package:flutter/material.dart';
import 'package:hr_project/bottom_bar.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';

  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextStyle style = TextStyle(fontFamily: 'Poppins', fontSize: 20);
  bool monval = false;

  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48,
        child: Image.asset(
          'images/logo.png',
          width: 200,
          height: 200,
        ),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      obscureText: false,
      initialValue: 'rolandopranata@gmail.com',
      decoration: InputDecoration(
        hintText: 'Email',
        fillColor: Colors.blue,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = new TextFormField(
      autofocus: false,
      initialValue: 'some password',
      obscureText: false,
      decoration: InputDecoration(
        border: new OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),
            borderSide: BorderSide(color: Colors.teal)),
        hintText: 'Password',
        fillColor: Colors.blue,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      ),
    );

    final loginButon = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(20),
      color: Color(0xffff3030),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        onPressed: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => BottomBar()));
        },
        child: Text("Login",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    final checkbox = Checkbox(
      value: monval,
      onChanged: (bool value) {
        setState(() {
          monval = value;
        });
      },
    );

    final forgotLabel = FlatButton(
      child: Text(
        'Forgot password?',
        style:
            TextStyle(color: Colors.black, fontSize: 15, fontFamily: "Poppins"),
      ),
      onPressed: () {},
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24, right: 24),
          children: <Widget>[
            logo,
            SizedBox(height: 50),
            email,
            SizedBox(height: 50),
            password,
            SizedBox(height: 30),
             Container(
              child: Row(
                children: <Widget>[
                  checkbox,
                  Container(
                      child: new Text(
                    "Remember me",
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 14,
                      color: Color(0xff000000),
                    ),
                  )),
                ],
              ),
            ),
            SizedBox(height: 35),
            loginButon,
            forgotLabel
          ],
        ),
      ),
    );
  }
}
