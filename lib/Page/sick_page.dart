import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class SickPage extends StatefulWidget {
  static var tag;

  final String title = "Flutter Pick Image demo";

  SickPage({Key key}) : super(key: key);

  @override
  _SakitPageState createState() => _SakitPageState();
}

class _SakitPageState extends State<SickPage> {
  TextStyle style = TextStyle(fontFamily: 'Poppins', fontSize: 20);
  Future<File> imageFile;

  pickImageFromGallery(ImageSource source) {
    setState(() {
      imageFile = ImagePicker.pickImage(source: source);
    });
  }

  Widget showImage() {
    return FutureBuilder<File>(
      future: imageFile,
      builder: (BuildContext context, AsyncSnapshot<File> snapshot) {
        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.data != null) {
          return Image.file(
            snapshot.data,
            width: 300,
            height: 300,
          );
        } else if (snapshot.error != null) {
          return const Text(
            'Error Picking Image',
            textAlign: TextAlign.center,
          );
        } else {
          return const Text(
            'No Image Selected',
            textAlign: TextAlign.center,
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 25, right: 25, top: 10),
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(Icons.arrow_back, color: Colors.black),
                      new Text(
                        "Sakit",
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Color(0xff000000),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 25, left: 25, top: 10),
                    margin: EdgeInsets.only(top: 50, left: 20, right: 20),
                    height: 700.00,
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
                              "Pengajuan izin sakit",
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
                            child: Column(
                              children: <Widget>[
                                showImage(),
                                RaisedButton(
                                  child: Text("Select Image from Gallery"),
                                  onPressed: () {
                                    pickImageFromGallery(ImageSource.gallery);
                                  },
                                ),
                              ],
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
                                child: Text("Ajukan izin sakit",
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
        ),
      ),
    );
  }
}
