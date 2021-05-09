

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'viewPaper.dart';

class mainScreen extends StatefulWidget {
  @override
  _mainScreenState createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text("hello dart"),
        leading: IconButton(
          onPressed: () {},
          color: Colors.black,
          icon: Icon(Icons.brightness_3),
        ),
      ),
      body: SafeArea(
        child: ListView(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Wallpapers',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'famous wallpapers',
                    style: TextStyle(color: Colors.black, fontSize: 23.0),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Container(
                    padding: EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter name',
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none,
                        prefix: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text(
                          'Categories',
                          style: TextStyle(color: Colors.black, fontSize: 30.0),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Container(
                          height: 200,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              _imageContainer1('1', 'Hello'),
                              _imageContainer2('2', 'Nature'),
                              _imageContainer1('1', 'Hello'),
                              _imageContainer1('1', 'Hello'),
                              _imageContainer1('1', 'Hello'),
                              _imageContainer1('1', 'Hello'),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 12.0,
                        ),
                        Container(
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/image4.jpg'),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(30.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _imageContainer1(image, title) {
  return AspectRatio(
    aspectRatio: 2.5 / 3,
    child: Container(
      margin: EdgeInsets.only(right: 16.0),
      decoration: BoxDecoration(
        color: Colors.greenAccent,
        borderRadius: BorderRadius.circular(12.0),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/image3.jpeg'),
        ),
      ),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    ),
  );
}

Widget _imageContainer2(image, title) {
  return AspectRatio(
    aspectRatio: 2.5 / 3,
    child: GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(right: 16.0),
        decoration: BoxDecoration(
          color: Colors.greenAccent,
          borderRadius: BorderRadius.circular(12.0),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/image4.jpg'),
          ),
        ),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    ),
  );
}

