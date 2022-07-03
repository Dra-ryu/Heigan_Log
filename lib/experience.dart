import 'package:flutter/material.dart';

class ExperienceApp extends StatelessWidget {
  // 選択された高校名を受け取る処理
  ExperienceApp(this.selectedHighschoolWay_1, this.selectedHighschoolWay_2);
  String selectedHighschoolWay_1;
  String selectedHighschoolWay_2;

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
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[

                Card( //Cardなのでサイズは自動調節される、これを今後増やす
                    margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 25.0),
                    color: Colors.indigo[100],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
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
          Text('県立A高校',
          style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.bold
          )
          ), //DBから
          Text('A方式',
          style: TextStyle(
              fontSize: 12,
              )
          ), //DBから
          Text('合格',
              style: TextStyle(
                  fontSize: 15, fontWeight: FontWeight.bold
              )) //DBから
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text('私立B高校',
              style: TextStyle(
                  fontSize: 15, fontWeight: FontWeight.bold
              )
            ), //DBから
          Text('B方式',
              style: TextStyle(
                  fontSize: 12,
              )), //DBから
          Text('合格',
              style: TextStyle(
                  fontSize: 15, fontWeight: FontWeight.bold
              )) //DBから
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Text('得意科目：',
              style: TextStyle(
                  fontSize: 12, fontWeight: FontWeight.bold
              )), //DBから
          Text('国語、英語、社会',
              style: TextStyle(
                  fontSize: 12,
              )),
        ]
    )
    );
  }
}

class Impression extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
       child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Divider(
            color: Color(0xff151280),
            thickness: 1.0,
            height: 1.0,
            indent: 20,
            endIndent: 20,
          ),
          Text('体験記',
          style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),//文字書式
          ),
          Text('日程がタイトだった',
              style: TextStyle(
                  fontSize: 12,
              )
          //文字書式
          )
        ]
       )
    );
  }
}












