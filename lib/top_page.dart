import 'package:flutter/material.dart';

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
          backgroundColor: Color(0xFF000080),
        ),
        body: Container(
          padding: EdgeInsets.only(top: 13.0, left: 30.0, right: 30.0),
          child: Center(
            child: Column(
              children:<Widget> [
                // Text ('併願ログ'),
                Image(
                  image: AssetImage('images/heigan.png'),
                  width: 300,
                  height: 300,
                ),
                Text ('志望校を選択するだけ。'),
                Text ('先輩の入試体験記を、いつでもどこからでも。'),
                Text ('未来に向けた一歩をを応援します。'),
                //TODO; explanation of this app.
                SizedBox(
                  height: 25.0,
                ),
                Divider(
                  color: Color(0xFF000080),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Container(
                  width: 200.0,
                  height: 60,
                  child: FlatButton(
                      color: Color(0xFF000080),
                      onPressed: (){},
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
                SizedBox(
                  height: 25.0,
                ),
                Container(
                  width: 200.0,
                  height: 60,
                  child: FlatButton(
                      color: Color(0xFF000080),
                      onPressed: (){print('pressed');},
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