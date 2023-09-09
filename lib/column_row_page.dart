import 'package:flutter/material.dart';

class ColumnRowPage extends StatelessWidget {
  const ColumnRowPage({super.key});

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Column & Row Page"),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 5, bottom: 8, top: 8, right: 5),
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  height: _height * .10,
                  child: Row(
                    children: [
                      Container(
                        width: _width * .20,
                        color: Colors.green,
                      ),
                      Container(
                        width: _width * .20,
                        color: Colors.yellow,
                      ),
                      Container(
                        width: _width * .30,
                        color: Colors.green,
                      ),
                      Container(
                        width: _width * .27,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: _height * .10,
                  child: Row(
                    children: [
                      Container(
                        width: _width * .20,
                        color: Colors.black,
                      ),
                      Container(
                        width: _width * .20,
                        color: Colors.grey,
                      ),
                      Container(
                        width: _width * .20,
                        color: Colors.black,
                      ),
                      Container(
                        width: _width * .19,
                        color: Colors.red,
                      ),
                      Container(
                        width: _width * .18,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: _height * .20,
              color: Colors.grey,
            ),
            Container(
              height: _height * .24,
              child: Row(
                children: [
                  Container(
                    width: _width * .33,
                    color: Colors.black,
                    child: Column(
                      children: [
                        Container(
                          height: _height * .13,
                          color: Colors.blue,
                        ),
                        Container(
                          height: _height * .10,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: _width * .32,
                    color: Colors.red,
                  ),
                  Container(
                    width: _width * .32,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            Container(
              height: _height * .21,
              child: Row(
                children: [
                  Container(
                    width: _width * .33,
                    color: Colors.grey,
                  ),
                  Container(
                    width: _width * .32,
                    color: Colors.black,
                    child: Column(
                      children: [
                        Container(
                          height: _height * .11,
                          color: Colors.black,
                        ),
                        Container(
                          height: _height * .10,
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: _width * .32,
                    child: Column(
                      children: [
                        Container(
                          height: _height * .10,
                          color: Colors.green,
                        ),
                        Container(
                          height: _height * .11,
                          child: Row(
                            children: [
                              Container(
                                width: _width * .15,
                                color: Colors.grey,
                              ),
                              Container(
                                width: _width * .17,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  //Container(
                  //  width: _width * .32,
                  //  color: Colors.green,
                  //),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
