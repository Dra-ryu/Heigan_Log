import 'package:flutter/material.dart';

import 'Second_Page.dart';


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
        title: const Text('ๆฐ่ฆๆ็จฟ'),
        backgroundColor: Color(0xff151280),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            Text('๐ธๅ้จใขใณใฑใผใ๐ธ',style: TextStyle(
              fontSize: 30,
              color: Colors.pink,
              fontWeight: FontWeight.bold
            ),),
            Text('ใใชใใซ็ถใๅพ่ผฉใซๅใใฆใๅ้จใญใฐ(ใใชใใฎ็ต้จ)ใๆใใฆใใ ใใ',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Container(
            // ๅๅดใฎไฝ็ฝ๏ผใใใฃใณใฐ๏ผ
            padding: EdgeInsets.all(10),
          ),

          Text("1.ๅ้จใใ้ซๆ กใจๅ้จๆนๅผใๆใใฆใใ ใใ"),

          //3
          Text('ๅ้จๆ ก1'),
          DropdownButton(
            //4
            items: const [
              //5
              DropdownMenuItem(
                child: Text('้ธๆใใฆใใ ใใ'),
                value: '0000',
              ),

              DropdownMenuItem(
                child: Text('็็ซA้ซๆ ก'),
                value: '0001',
              ),
              DropdownMenuItem(
                child: Text('็ง็ซB้ซๆ ก'),
                value: '0002',
              ),
              DropdownMenuItem(
                child: Text('็ง็ซC้ซๆ ก'),
                value: '0003',
              ),
              DropdownMenuItem(
                child: Text('็ง็ซD้ซๆ ก'),
                value: '0004',
              ),
              DropdownMenuItem(
                child: Text('็ง็ซE้ซๆ ก'),
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
            Text('ๅ้จๆ ก1ใฎๅ้จๆนๅผ',),
            DropdownButton(
              //4
              items: const [
                //5
                DropdownMenuItem(
                  child: Text('้ธๆใใฆใใ ใใ'),
                  value: '0000',
                ),
                DropdownMenuItem(
                  child: Text('Aๆนๅผ'),
                  value: '0001',
                ),
                DropdownMenuItem(
                  child: Text('Bๆนๅผ'),
                  value: '0002',
                ),
                DropdownMenuItem(
                  child: Text('Cๆนๅผ'),
                  value: '0003',
                ),
                DropdownMenuItem(
                  child: Text('Dๆนๅผ'),
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
            Text('ๅ้จๆ ก2'),
            DropdownButton(
            //4
            items: const [
              //5
              DropdownMenuItem(
                child: Text('้ธๆใใฆใใ ใใ'),
                value: '0000',
              ),

              DropdownMenuItem(
                child: Text('็็ซA้ซๆ ก'),
                value: '0001',
              ),
              DropdownMenuItem(
                child: Text('็ง็ซB้ซๆ ก'),
                value: '0002',
              ),
              DropdownMenuItem(
                child: Text('็ง็ซC้ซๆ ก'),
                value: '0003',
              ),
              DropdownMenuItem(
                child: Text('็ง็ซD้ซๆ ก'),
                value: '0004',
              ),
              DropdownMenuItem(
                child: Text('็ง็ซE้ซๆ ก'),
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
            Text('ๅ้จๆ ก2ใฎๅ้จๆนๅผ',),
            DropdownButton(
              //4
              items: const [
                //5
                DropdownMenuItem(
                  child: Text('้ธๆใใฆใใ ใใ'),
                  value: '0000',
                ),
                DropdownMenuItem(
                  child: Text('Aๆนๅผ'),
                  value: '0001',
                ),
                DropdownMenuItem(
                  child: Text('Bๆนๅผ'),
                  value: '0002',
                ),
                DropdownMenuItem(
                  child: Text('Cๆนๅผ'),
                  value: '0003',
                ),
                DropdownMenuItem(
                  child: Text('Dๆนๅผ'),
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
              // ๅๅดใฎไฝ็ฝ๏ผใใใฃใณใฐ๏ผ
              padding: EdgeInsets.all(10),
            ), //็ฉบ็ฝ

            Text('2.1ใง็ญใใ้ซๆ กใฎๅ้จ็ตๆใๆใใฆใใ ใใใ'),

            Text('ๅ้จๆ ก1',),
            DropdownButton(
              //4
              items: const [
                //5
                DropdownMenuItem(
                  child: Text('้ธๆใใฆใใ ใใ'),
                  value: '0000',
                ),
                DropdownMenuItem(
                  child: Text('ๅๆ ผ'),
                  value: '0001',
                ),
                DropdownMenuItem(
                  child: Text('ไธๅๆ ผ'),
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
            Text('ๅ้จๆ ก2',),
            DropdownButton(
              //4
              items: const [
                //5
                DropdownMenuItem(
                  child: Text('้ธๆใใฆใใ ใใ'),
                  value: '0000',
                ),
                DropdownMenuItem(
                  child: Text('ๅๆ ผ'),
                  value: '0001',
                ),
                DropdownMenuItem(
                  child: Text('ไธๅๆ ผ'),
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
            // ๅๅดใฎไฝ็ฝ๏ผใใใฃใณใฐ๏ผ
            padding: EdgeInsets.all(8),
          ),
          Text('3.ใชใใใฎๅ้จๆนๅผใ้ธใณใพใใใ'),
            Container(
              // ๅๅดใฎไฝ็ฝ๏ผใใใฃใณใฐ๏ผ
              padding: EdgeInsets.all(4),
            ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: '็็ฑ',
            ),
          ),
          Container(
            // ๅๅดใฎไฝ็ฝ๏ผใใใฃใณใฐ๏ผ
            padding: EdgeInsets.all(8),
          ),
          Text('4.ใใชใใฎๅพๆ็ง็ฎใๅ้ใฏใชใใงใใ'),
            Container(
              // ๅๅดใฎไฝ็ฝ๏ผใใใฃใณใฐ๏ผ
              padding: EdgeInsets.all(4),
            ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'ๅพๆ็ง็ฎใๅ้',
            ),
          ),
          Container(
            // ๅๅดใฎไฝ็ฝ๏ผใใใฃใณใฐ๏ผ
            padding: EdgeInsets.all(8),
          ),
          Text('5.ๅฎ้ใซๅใใฆใฟใฆๆๆณใ่ใใใฆใใ ใใ\n๏ผๆฅ็จใใใคใใฃใ็ญ)'),
            Container(
              // ๅๅดใฎไฝ็ฝ๏ผใใใฃใณใฐ๏ผ
              padding: EdgeInsets.all(4),
            ),
            TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'ๆๆณ',
            ),
          ),
          Container(
            // ๅๅดใฎไฝ็ฝ๏ผใใใฃใณใฐ๏ผ
            padding: EdgeInsets.all(8),
          ),


          ElevatedButton(
            child: const Text('ๆๅบใใ'),
            style: ElevatedButton.styleFrom(
              primary: Colors.pink[200],
              onPrimary: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondPage()),
              );
            },
          ),

            ],
        ),
      ),
      ),
    );
  }
}
