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
                    margin: EdgeInsets.symmetric(vertical: 12.0, horizontal: 25.0),
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
                Card( //Cardなのでサイズは自動調節される、これを今後増やす
                  margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 25.0),
                  color: Colors.indigo[100],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: <Widget>[
                      HighSchoolName2(),
                      Subject2(),
                      Impression2()
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

class HighSchoolName2 extends StatelessWidget{
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
              Text('不合格',
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



class Subject2 extends StatelessWidget{
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
              Text('国語、数学',
                  style: TextStyle(
                    fontSize: 12,
                  )),
            ]
        )
    );
  }
}


class Impression2 extends StatelessWidget{
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
              Text('日程については余裕がありました。ぼくは県立A高校に行きたかったので、5教科をバランスよく勉強しつつ、私立B高校の入試の直前は、受験科目の国英社の3教科に絞って学習していました。私立B高校は、なんとなく科目の少ないB方式を選んで受験しましたが、県立高校の練習として受験科目が5教科そろっているC方式を選んでもよかったと思っています。',
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
          Text('第一志望が私立B高校で、県立A高校を併願校として受験しました。私は数学と理科が苦手なので、私立B高校は国英社の3教科で受けられるB方式を受験しました。併願した県立A高校は国数英理社の5教科で、結局数理の勉強もしないといけなかったのですが、幸い私立B高校の受験日から県立A高校の受験日までに1ヶ月あったので、私立B高校の受験後に数理の対策を集中的に行うと決めて、第一志望である私立B高校の科目に集中することができました。',
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












