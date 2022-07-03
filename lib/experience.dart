import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //デバックマークを非表示
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff151280),
        ), //上のバー
        body: SingleChildScrollView( //スクロールできるようにした
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                Card( //Cardなのでサイズは自動調節される、これを今後増やす
                    //child: Align(alignment: Alignment.center),
                    margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 25.0),
                    color: Colors.indigo[100],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                          HighSchoolName(),
                          Subject(),
                          Impression()
                      ],
                    ),

                    ),
              ],
            )),
      ),
    );
  }
}

class HighSchoolName extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Center(
      child :Column(
      children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text('A高校'), //DBから
          Text('１方式'), //DBから
          Text('合格') //DBから
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text('B高校'), //DBから
          Text('2方式'), //DBから
          Text('合格') //DBから
          ],
      ),
     ],
      ),
    );
  }
}

class Subject extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Center(
      child: Row(
        children: <Widget>[
          Text('得意科目：'),
          Text('国語'),
        ]
      ),
    );
  }
}

class Impression extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return
       Column(
        children: <Widget>[
          Text('感想',
          //文字書式
          ),
          Text('日程がタイトだった',
          //文字書式
          )
        ]

    );
  }
}












