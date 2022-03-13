import 'dart:ui';

import 'package:flutter/material.dart';

class SocialPage extends StatefulWidget {
  const SocialPage({Key? key}) : super(key: key);

  @override
  State<SocialPage> createState() => _SocialPageState();
}

class _SocialPageState extends State<SocialPage> {
  var text = 'hello';
  List posts = [];
  var fontStyle = '';
  var text_test =
      'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem';

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double yourWidth = width * 0.65;
    const colorDefault = Colors.deepOrange;
    return MaterialApp(
      theme: ThemeData(primaryColor: colorDefault),
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          leading: Builder(
            builder: (BuildContext context) {
              return Image(
                image: AssetImage('assets/user.jpg'),
                height: 180.0,
                width: 180.0,
                fit: BoxFit.cover,
              );
            },
          ),
          title: Text(
            'User info',
            style: TextStyle(fontSize: 45.0),
          ),
          centerTitle: true,
          leadingWidth: 180.0,
          backgroundColor: Colors.black26,
          toolbarHeight: 225.0,
        ),
        body: ListView.builder(
            itemCount: posts.length,
            itemBuilder: (BuildContext context, int index) {
              return Center(
                child: Column(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage('assets/img.jpeg'),
                            fit: BoxFit.cover,
                            height: 1170.0,
                          ),
                          Row(
                            textDirection: TextDirection.ltr,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Container(
                                  child: Text(text_test,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 45,
                                        fontFamily: 'Times New Roman',
                                      ),
                                      textDirection: TextDirection.ltr),
                                  width: 720.0,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  child: Text('ICON',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 45,
                                        fontFamily: 'Times New Roman',
                                      ),
                                      textDirection: TextDirection.ltr),
                                  width: 420.0,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      margin: EdgeInsets.symmetric(
                          horizontal: 22.0, vertical: 45.0),
                      color: Colors.black26,
                      height: 1440.0,
                    )
                  ],
                ),
              );
            }),
        floatingActionButton: Container(
            width: 180,
            height: 180,
            margin: EdgeInsets.symmetric(horizontal: 80.0, vertical: 100.0),
            child: FloatingActionButton(
              child: Text(
                'Face',
                style: TextStyle(fontSize: 35),
              ),
              backgroundColor: colorDefault,
              onPressed: () {
                setState(() {
                  posts.add('Hello');
                });
              },
            )),
      ),
    );
  }
}
