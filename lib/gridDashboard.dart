import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GridDashboard extends StatelessWidget {
  Card item1 = new Card(
    title: "Cuti",
    image: "images/calendar.png",
  );
  Card item2 = new Card(
    title: "Remote",
    image: "images/remote.png",
  );
  Card item3 = new Card(
    title: "Sakit",
    image: "images/sick.png"
  );
  Card item4 = new Card(
    title: "Absensi",
    image: "images/clock.png",
  );
  Card item5 = new Card(
    title: "Izin",
    image: "images/check.png",
  );

  var myList;
  @override
  Widget build(BuildContext context) {
    List<Card> myList = [item1, item2, item3, item4, item5];
    var color = Color(0xfff4f4f4);
    return Container(
      height: 230,
      child: GridView.count(
        physics: NeverScrollableScrollPhysics(),
        childAspectRatio: 1.0,
        // shrinkWrap: true,
        padding: EdgeInsets.only(left: 16, right: 16),
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 18,
        children: myList.map((data) {
          return Container(
            decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  data.image,
                  width: 50,
                  alignment: Alignment.center,
                ),
                Text(
                  data.title,
                  style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  )),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}

class Card {
  String title;
  String image;
  Card({this.title, this.image});
}
