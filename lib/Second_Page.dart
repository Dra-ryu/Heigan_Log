import 'package:flutter/material.dart';
import 'package:heiganlog/top_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('回答完了画面'),
        backgroundColor: Color(0xFF151280),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          color: Colors.white,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text('ご協力ありがとうございました！！',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.pink,
                    fontWeight: FontWeight.bold)),
            Text('回答は正常に保存されました！\nあなたの高校生活がよりよいものになりますように！！🌸',
                style: TextStyle(fontSize: 20)),
            Container(
              // 内側の余白（パディング）
              padding: EdgeInsets.all(10),
            ),
            ElevatedButton(
                child: const Text('トップページに戻る'),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF151280),
                  onPrimary: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TopPage()),
                  );
                }),
          ]),
        ),
      ),
    );
  }
}