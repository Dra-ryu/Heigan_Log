import 'package:flutter/material.dart';


class createExperienceApp extends StatelessWidget {
  const createExperienceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SamplePage(),
    );
  }
}

//1
class SamplePage extends StatefulWidget {
  const SamplePage({Key? key}) : super(key: key);

  @override
  State<SamplePage> createState() => _SamplePageState();
}

class _SamplePageState extends State<SamplePage> {
  //2
  String? isSelectedItem1 = '0000';
  String? isSelectedItem2 = '0000';
  String? howtoSchool1 = '0000';
  String? howtoSchool2 = '0000';
  String? resultSchool1 = '0000';
  String? resultSchool2 = '0000';



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('新規投稿'),
        backgroundColor: Color(0xff151280),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            Text('🌸受験アンケート🌸',style: TextStyle(
              fontSize: 30,
              color: Colors.pink,
              fontWeight: FontWeight.bold
            ),),
            Text('あなたに続く後輩に向けて、受験ログ(あなたの経験)を教えてください',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Container(
            // 内側の余白（パディング）
            padding: EdgeInsets.all(10),
          ),

          Text("1.受験した高校と受験方式を教えてください"),

          //3
          Text('受験校1'),
          DropdownButton(
            //4
            items: const [
              //5
              DropdownMenuItem(
                child: Text('選択してください'),
                value: '0000',
              ),

              DropdownMenuItem(
                child: Text('県立A高校'),
                value: '0001',
              ),
              DropdownMenuItem(
                child: Text('私立B高校'),
                value: '0002',
              ),
              DropdownMenuItem(
                child: Text('私立C高校'),
                value: '0003',
              ),
              DropdownMenuItem(
                child: Text('私立D高校'),
                value: '0004',
              ),
              DropdownMenuItem(
                child: Text('私立E高校'),
                value: '0005',
              ),
            ],
            onChanged: (String? value) {
              setState(() {
                isSelectedItem1 = value;
              });
            },
            //7
            value: isSelectedItem1,
          ),
            Text('受験校1の受験方式',),
            DropdownButton(
              //4
              items: const [
                //5
                DropdownMenuItem(
                  child: Text('選択してください'),
                  value: '0000',
                ),
                DropdownMenuItem(
                  child: Text('A方式'),
                  value: '0001',
                ),
                DropdownMenuItem(
                  child: Text('B方式'),
                  value: '0002',
                ),
                DropdownMenuItem(
                  child: Text('C方式'),
                  value: '0003',
                ),
                DropdownMenuItem(
                  child: Text('B方式'),
                  value: '0004',
                ),
              ],
              //6
              onChanged: (String? value) {
                setState(() {
                  howtoSchool1 = value;
                });
              },
              //7
              value: howtoSchool1,
            ),
            Text('受験校2'),
            DropdownButton(
            //4
            items: const [
              //5
              DropdownMenuItem(
                child: Text('選択してください'),
                value: '0000',
              ),

              DropdownMenuItem(
                child: Text('県立A高校'),
                value: '0001',
              ),
              DropdownMenuItem(
                child: Text('私立B高校'),
                value: '0002',
              ),
              DropdownMenuItem(
                child: Text('私立C高校'),
                value: '0003',
              ),
              DropdownMenuItem(
                child: Text('私立D高校'),
                value: '0004',
              ),
              DropdownMenuItem(
                child: Text('私立E高校'),
                value: '0005',
              ),
            ],
            onChanged: (String? value) {
              setState(() {
                isSelectedItem2 = value;
              });
            },
            //7
            value: isSelectedItem2,
          ),
            Text('受験校2の受験方式',),
            DropdownButton(
              //4
              items: const [
                //5
                DropdownMenuItem(
                  child: Text('選択してください'),
                  value: '0000',
                ),
                DropdownMenuItem(
                  child: Text('A方式'),
                  value: '0001',
                ),
                DropdownMenuItem(
                  child: Text('B方式'),
                  value: '0002',
                ),
                DropdownMenuItem(
                  child: Text('C方式'),
                  value: '0003',
                ),
                DropdownMenuItem(
                  child: Text('B方式'),
                  value: '0004',
                ),
              ],
              //6
              onChanged: (String? value) {
                setState(() {
                  howtoSchool2 = value;
                });
              },
              //7
              value: howtoSchool2,
            ),
            Container(
              // 内側の余白（パディング）
              padding: EdgeInsets.all(10),
            ), //空白

            Text('2.1で答えた高校の受験結果を教えてください。'),

            Text('受験校1',),
            DropdownButton(
              //4
              items: const [
                //5
                DropdownMenuItem(
                  child: Text('選択してください'),
                  value: '0000',
                ),
                DropdownMenuItem(
                  child: Text('合格'),
                  value: '0001',
                ),
                DropdownMenuItem(
                  child: Text('不合格'),
                  value: '0002',
                ),
              ],
              //6
              onChanged: (String? value) {
                setState(() {
                  resultSchool1 = value;
                });
              },
              //7
              value: resultSchool1,
            ),
            Text('受験校2',),
            DropdownButton(
              //4
              items: const [
                //5
                DropdownMenuItem(
                  child: Text('選択してください'),
                  value: '0000',
                ),
                DropdownMenuItem(
                  child: Text('合格'),
                  value: '0001',
                ),
                DropdownMenuItem(
                  child: Text('不合格'),
                  value: '0002',
                ),
              ],
              //6
              onChanged: (String? value) {
                setState(() {
                  resultSchool2 = value;
                });
              },
              //7
              value: resultSchool2,
            ),

          Container(
            // 内側の余白（パディング）
            padding: EdgeInsets.all(8),
          ),
          Text('3.なぜその受験方式を選びましたか'),
            Container(
              // 内側の余白（パディング）
              padding: EdgeInsets.all(4),
            ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: '理由',
            ),
          ),
          Container(
            // 内側の余白（パディング）
            padding: EdgeInsets.all(8),
          ),
          Text('4.あなたの得意科目、分野はなんですか'),
            Container(
              // 内側の余白（パディング）
              padding: EdgeInsets.all(4),
            ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: '得意科目、分野',
            ),
          ),
          Container(
            // 内側の余白（パディング）
            padding: EdgeInsets.all(8),
          ),
          Text('5.実際に受けてみて感想を聞かせてください\n（日程がきつかった等)'),
            Container(
              // 内側の余白（パディング）
              padding: EdgeInsets.all(4),
            ),
            TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: '感想',
            ),
          ),
          Container(
            // 内側の余白（パディング）
            padding: EdgeInsets.all(8),
          ),


          ElevatedButton(
            child: const Text('提出する'),
            style: ElevatedButton.styleFrom(
              primary: Colors.pink[200],
              onPrimary: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () {},
          ),

            ],
        ),
      ),
      ),
    );
  }
}