import 'package:flutter/material.dart';
import 'package:hr_project/login_page.dart';

class ProfilePage extends StatelessWidget {
  static var tag;

  const ProfilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: SafeArea(
            child: Container(
              padding: EdgeInsets.only(top: 50, left: 20, right: 20),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 10),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Account",
                      style: TextStyle(
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    alignment: Alignment.center,
                    child: Column(
                      children: <Widget>[
                        Image.asset("images/useraccount.png"),
                        SizedBox(height: 10),
                        new Text(
                          "Rolando Pranata",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: Color(0xff000000),
                          ),
                        ),
                        SizedBox(height: 5),
                        new Text(
                          "Beginner Programmer",
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 14,
                            color: Color(0xff000000),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Container(
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(right: 5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Icon(Icons.person_outline),
                                    Text(
                                      "\t\t\t\tEdit Profile",
                                      style: TextStyle(
                                        fontFamily: "Montserrat",
                                        fontSize: 16,
                                        color: Color(0xff000000),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Icon(Icons.help),
                                    Text(
                                      "\t\t\t\tHelp",
                                      style: TextStyle(
                                        fontFamily: "Montserrat",
                                        fontSize: 16,
                                        color: Color(0xff000000),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 20),
                              child: Material(
                                elevation: 5,
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xffff3030),
                                child: MaterialButton(
                                  minWidth: MediaQuery.of(context).size.width,
                                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                                  onPressed: () {
                                    Navigator.of(context).pushNamed(LoginPage.tag);
                                  },
                                  child: Text(
                                    "Logout",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
