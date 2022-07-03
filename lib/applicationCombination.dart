import 'package:flutter/material.dart';
import 'experience.dart';

class ApplicationCombinationApp extends StatelessWidget {

  // 選択された高校名を受け取る処理
  ApplicationCombinationApp(this.selectedHighschool_1, this.selectedHighschool_2);
  String selectedHighschool_1;
  String selectedHighschool_2;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '受験方式一覧',
      home: Scaffold(
        appBar: AppBar(backgroundColor: Color(0xff151280)),
        body: Container(
          padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
          width: double.maxFinite,
          child: ListView(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 30),
                child: Text(
                  textAlign: TextAlign.center,
                  '受験方式一覧',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              Container(
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          '〇〇〇〇高校',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 30),
                          child: Text(
                            '〇〇方式',
                            style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: button(),
                        )
                      ],
                    ),
                  ),
                  color: Colors.indigo[100],
                  elevation: 5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class button extends StatelessWidget {
  const button({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.fromLTRB(30, 5, 30, 5),
              primary: Color(0xff151280),
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              )
          ),
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ExperienceApp("〇〇高校　〇〇方式", "〇〇高校　〇〇方式")),
            );
          },
          child: Text('体験記を見る')
      ),
    );
  }
}