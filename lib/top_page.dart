import 'package:flutter/material.dart';
import 'highschool_new.dart';
import 'highschool_select.dart';

class TopPage extends StatefulWidget {
  static const String id = 'top_page'; //Top Pageに遷移するためのRoute
  @override
  State<TopPage> createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('併願ログ'),
          centerTitle: true,
          backgroundColor: Color(0xFF151280),
        ),
        body: Container(
          color: Colors.indigo[50],
          padding: EdgeInsets.only(top: 7.0, left: 30.0, right: 30.0),
          child: Center(
            child: Column(
              children:<Widget> [
                // Text ('併願ログ'),
                Image(
                  image: AssetImage('images/heigan.png'),
                  width: 330,
                  height: 330,
                ),
                Text ('志望校を選択するだけ', style: TextStyle(fontSize: 20),),
                SizedBox(height: 7),
                Text ('先輩の入試体験記を、いつでもどこからでも｡', style: TextStyle(fontSize: 15)),
                SizedBox(height: 1),
                Text ('未来への一歩をを応援します🌸', style: TextStyle(fontSize: 15)),
                //TODO; explanation of this app.
                SizedBox(height: 25.0),
                Divider(
                  color: Color(0xFF151280),
                ),
                SizedBox(height: 25.0),
                Container(
                  width: 250.0,
                  height: 60,
                  child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)
                      ),
                      color: Color(0xFF151280),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => highschoolSelectPage()
                          ),
                        );
                      },
                      // onPressed: (){Navigator.pushNamed(context, Searching.id);},
                      //TODO: specify the routeName for searching page.
                      child: Text(
                        '志望高校を選択',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      )
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  width: 250.0,
                  height: 60,
                  child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)
                      ),
                      color: Color(0xFF151280),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => createExperienceApp()
                          ),
                        );
                      },
                      //TODO: specify the routeName for posting page.
                      child: Text(
                          '体験記を投稿',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          )
                      )
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}
