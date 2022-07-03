import 'package:flutter/material.dart';

import 'applicationCombination.dart';

class highschoolSelect extends StatefulWidget {

  @override
  State<highschoolSelect> createState() => _highschoolSelectState();
}

class _highschoolSelectState extends State<highschoolSelect> {
  String selectedHighschool_1 = '高校名を選択';
  String selectedHighschool_2 = '高校名を選択';

  List<String> dropdownValues1 = ["高校名を選択","A高校", "B高校", "C高校"];
  List<String> dropdownValues2 = ["高校名を選択","A高校", "B高校"];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(top: 30, bottom: 100),
            child: Text(
              '志望高校選択',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
              ),
            ),
          ),

          SizedBox(
            width: 250,
            child: Text(
              "志望校1",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),

          Container(
            width: 250,
            height: 50,
            child: DropdownButton<String>(
              dropdownColor: Color(0xffD9D9D9),
              items: [
                for (int i = 0; i < dropdownValues1.length; i++) ... {
                  DropdownMenuItem(
                    value: dropdownValues1[i],
                    child: Text(dropdownValues1[i]),
                  ),
                },
              ],
              onChanged: (String? value) {
                setState(()  {
                  selectedHighschool_1 = value!;
                });
              },
              value: selectedHighschool_1,
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.black,
              ),
              isExpanded: true,
              iconSize: 48,
            ),
          ),

          const Padding(
            padding: EdgeInsets.only(top: 30),
            child: SizedBox(
              width: 250,
              child: Text(
                "志望校2",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),

          Container(
            width: 250,
            height: 50,
            child: DropdownButton<String>(
              dropdownColor: Color(0xffD9D9D9),
              items: [
                for (int i = 0; i < dropdownValues2.length; i++) ... {
                  DropdownMenuItem(
                    value: dropdownValues2[i],
                    child: Text(dropdownValues2[i]),
                  ),
                },
              ],
              onChanged: (String? value) {
                setState(()  {
                  selectedHighschool_2 = value!;
                });
              },
              value: selectedHighschool_2,
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.black,
              ),
              isExpanded: true,
              iconSize: 48,
            ),
          ),


          SizedBox(
            width: 220.0,
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ApplicationCombinationApp(selectedHighschool_1, selectedHighschool_2)),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff151280),
                  onPrimary: Colors.purple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text(
                  '次へ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


// stateless部分=タイトル、appbarなど
class highschoolSelectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff151280),
        ),
        body: highschoolSelect(),
      ),
    );
  }

}