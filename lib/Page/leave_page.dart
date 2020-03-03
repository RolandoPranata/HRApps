import 'package:flutter/material.dart';

class LeavePage extends StatefulWidget {
  static var tag;

  LeavePage({Key key}) : super(key: key);

  @override
  _CutiPageState createState() => _CutiPageState();
}

class _CutiPageState extends State<LeavePage> {
  TextStyle style = TextStyle(fontFamily: 'Poppins', fontSize: 20);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(right: 25, left: 25, top: 50),
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(right: 120),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[Icon(Icons.arrow_back)],
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        new Text(
                          "Cuti",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: Color(0xff000000),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 25, left: 25, top: 10),
                margin: EdgeInsets.only(top: 50, left: 20, right: 20),
                height: 185.00,
                width: 330.00,
                decoration: BoxDecoration(
                  color: Color(0xfff4f4f4),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.00),
                    topRight: Radius.circular(15.00),
                    bottomLeft: Radius.circular(15.00),
                    bottomRight: Radius.circular(15.00),
                  ),
                ),
                child: Container(
                  margin: EdgeInsets.only(bottom: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      new Text(
                        "Cuti tahunan",
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Color(0xff000000),
                        ),
                      ),
                      new Text(
                        "8 hari",
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 18,
                          color: Color(0xff000000),
                        ),
                      ),
                      new Text(
                        "Sisa kuota sampai Des 2020",
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 12,
                          color: Color(0xff868686),
                        ),
                      ),
                      new Container(
                        height: 1.00,
                        width: 289.00,
                        decoration: BoxDecoration(
                          color: Color(0xffffffff),
                          border: Border.all(
                            width: 1.00,
                            color: Color(0xff707070),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                new Text(
                                  "Kuota",
                                  style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 16,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                new Text(
                                  "10",
                                  style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                new Text(
                                  "Terpakai",
                                  style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 16,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                new Text(
                                  "7",
                                  style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 25, left: 25, top: 10),
                margin:
                    EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 50),
                height: 550.00,
                width: 330.00,
                decoration: BoxDecoration(
                  color: Color(0xfff4f4f4),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.00),
                    topRight: Radius.circular(15.00),
                    bottomLeft: Radius.circular(15.00),
                    bottomRight: Radius.circular(15.00),
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.only(right: 10, left: 10, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Text(
                          "Pengajuan Cuti",
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Text(
                          "Tanggal Mulai",
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 18,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: new InputDecoration(
                              prefixIcon: const Icon(
                                Icons.date_range,
                                color: Color(0xff707070),
                              ),
                              suffixStyle:
                                  const TextStyle(color: Colors.green)),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Text(
                          "Tanggal Berakhir",
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 18,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: new InputDecoration(
                              prefixIcon: const Icon(
                                Icons.date_range,
                                color: Color(0xff707070),
                              ),
                              suffixStyle:
                                  const TextStyle(color: Colors.green)),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Text(
                          "",
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 18,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: TextField(
                          maxLines: 5,
                          decoration: InputDecoration(
                            hintText: "Enter your text here",
                            border: OutlineInputBorder(),
                            labelText: 'Alasan',
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        child: Material(
                          elevation: 5,
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xffff3030),
                          child: MaterialButton(
                            minWidth: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            onPressed: () {
                              // Navigator.pushReplacement(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (BuildContext context) => BottomBar()));
                            },
                            child: Text("Ajukan Cuti",
                                textAlign: TextAlign.center,
                                style: style.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
