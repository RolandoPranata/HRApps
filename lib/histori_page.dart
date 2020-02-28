import 'package:flutter/material.dart';

class HistoriPage extends StatefulWidget {
  static var tag;

  HistoriPage({Key key}) : super(key: key);

  @override
  _HistoriPageState createState() => _HistoriPageState();
}

class _HistoriPageState extends State<HistoriPage> {
  List _date = [
    "Tanggal",
    "1",
    "2",
    "3",
    "4",
    "5"
  ];

  List _month = [
    "Bulan",
    "January",
    "februari",
    "Maret",
    "April",
    "Mei",
  ];

  List<DropdownMenuItem<String>> _dropDownMenuItemsDate;
  List<DropdownMenuItem<String>> _dropDownMenuItemsMonth;
  String _dates;
  String _months;

  @override
  void initState() {
    _dropDownMenuItemsDate = getDropDownMenuItemsDate();
    _dropDownMenuItemsMonth = getDropDownMenuItemsMonth();
    _dates = _dropDownMenuItemsDate[0].value;
    _months = _dropDownMenuItemsMonth[0].value;
    super.initState();
  }

  List<DropdownMenuItem<String>> getDropDownMenuItemsDate() {
    List<DropdownMenuItem<String>> items = new List();
    for (String date in _date) {
      items.add(new DropdownMenuItem(value: date, child: new Text(date)));
    }
    return items;
  }

  List<DropdownMenuItem<String>> getDropDownMenuItemsMonth() {
    List<DropdownMenuItem<String>> items = new List();
    for (String month in _month) {
      items.add(new DropdownMenuItem(value: month, child: new Text(month)));
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(right: 20, left: 20, top: 50),
              child: Row(
                children: <Widget>[
                  new Text(
                    "Report",
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Color(0xff000000),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50, left: 20, right: 20),
              height: 432.00,
              width: 330.00,
              decoration: BoxDecoration(
                color: Color(0xfff4f4f4),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.00),
                  topRight: Radius.circular(15.00),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topCenter,
                        margin: EdgeInsets.only(right: 10),
                        child: DropdownButton(
                          value: _dates,
                          items: _dropDownMenuItemsDate,
                          onChanged: changedDropDownItemDates,
                        )),
                    Container(
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(left: 10),
                      child: DropdownButton(
                      value: _months,
                      items: _dropDownMenuItemsMonth,
                      onChanged: changedDropDownItemMonths,
                    )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void changedDropDownItemDates(String selectedDate) {
    setState(() {
      _dates = selectedDate;
    });
  }

   void changedDropDownItemMonths(String selectedMonth) {
    setState(() {
      _months = selectedMonth;
    });
  }
}
