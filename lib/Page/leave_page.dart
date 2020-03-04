import 'package:flutter/material.dart';
import 'package:hr_project/bottom_bar.dart';

class LeavePage extends StatefulWidget {
  static var tag;

  LeavePage({Key key}) : super(key: key);

  @override
  _CutiPageState createState() => _CutiPageState();
}

class _CutiPageState extends State<LeavePage> {
  TextStyle style = TextStyle(fontFamily: 'Poppins', fontSize: 20);

   TextStyle textwhiteStyle = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  TextStyle text14bold = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 14.0,
    fontWeight: FontWeight.bold,
  );

  TextStyle text14 = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 14.0,
  );

  DateTime _dateTimestar, _dateTimeend;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(right: 16, left: 16, top: 50),
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
                padding: EdgeInsets.only(right: 16, left: 16, top: 10),
                margin: EdgeInsets.only(top: 50, left: 16, right: 16),
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
                padding: EdgeInsets.only(right: 10, left: 10, top: 10),
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Tanggal Mulai",
                            style: text14bold,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                _dateTimestar == null
                                    ? ''
                                    : _dateTimestar.toString(),
                                style: text14,
                              ),
                              Container(
                                  width: 44.0,
                                  child: FlatButton(
                                    child: Icon(
                                      Icons.calendar_today,
                                      color: Colors.black,
                                    ),
                                    onPressed: () {
                                      showDatePicker(
                                              context: context,
                                              initialDate: _dateTimestar == null
                                                  ? DateTime.now()
                                                  : _dateTimestar,
                                              firstDate: DateTime(2015),
                                              lastDate: DateTime(2030))
                                          .then((date) {
                                        setState(() {
                                          _dateTimestar = date;
                                        });
                                      });
                                    },
                                  ))
                            ],
                          ),
                          Divider(height: 1.0, color: Colors.black)
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Tanggal Berakhir",
                              style: text14bold,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  _dateTimeend == null
                                      ? ''
                                      : _dateTimeend.toString(),
                                  style: text14,
                                ),
                                Container(
                                    width: 44.0,
                                    child: FlatButton(
                                      child: Icon(
                                        Icons.calendar_today,
                                        color: Colors.black,
                                      ),
                                      onPressed: () {
                                        showDatePicker(
                                                context: context,
                                                initialDate:
                                                    _dateTimeend == null
                                                        ? _dateTimestar
                                                        : _dateTimeend,
                                                firstDate: DateTime(2015),
                                                lastDate: DateTime(2030))
                                            .then((date) {
                                          setState(() {
                                            _dateTimeend = date;
                                          });
                                        });
                                      },
                                    ))
                              ],
                            ),
                            Divider(height: 1.0, color: Colors.black)
                          ],
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
                      SizedBox(height: 32),
                      Material(
                        elevation: 2.0,
                        borderRadius: BorderRadius.circular(15.0),
                        color: Color(0xffFF3030),
                        child: MaterialButton(
                          minWidth: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (_) {
                                return BottomBar();
                              }),
                            );
                          },
                          child: Text(
                            'Ajukan Izin',
                            textAlign: TextAlign.center,
                            style: textwhiteStyle,
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
