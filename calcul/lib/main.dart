import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("CalCulator"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width:4.5,
                  color: Colors.grey,
                ),
              ),
              alignment: Alignment.centerRight,
              padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
              child: Text('0',style: TextStyle(fontSize: 46.0),),
            ),
            Row(
              children: [
                Expanded(
                    child: SizedBox(
                      width: 40,
                      height: 40,
                      child: OutlinedButton(
                        onPressed: (){},
                        child: (
                        Text("C")
                        ),
                      ),
                    ),
                ),

                Expanded(child: OutlinedButton(onPressed: (){}, child: (Text('()'))),),
                Expanded(child: OutlinedButton(onPressed: (){}, child: (Text('%'))),),
                Expanded(child: OutlinedButton(onPressed: (){}, child: (Text('/'))),),
              ],

            ),
            Row(
              children: [
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    primary: Colors.white, // 글자색 적용
                    backgroundColor: Colors.black87, // 배경 적용

                  ),
                  child: const Text('7'),
                ),
                Expanded(child: OutlinedButton(onPressed: (){}, child: (Text('8'))),),
                Expanded(child: OutlinedButton(onPressed: (){}, child: (Text('9'))),),
                Expanded(child: OutlinedButton(onPressed: (){}, child: (Text('*'))),),
              ],
            ),
            Row(
              children: [
                Expanded(child: OutlinedButton(onPressed: (){}, child: (Text('4'))),),
                Expanded(child: OutlinedButton(onPressed: (){}, child: (Text('5'))),),
                Expanded(child: OutlinedButton(onPressed: (){}, child: (Text('6'))),),
                Expanded(child: OutlinedButton(onPressed: (){}, child: (Text('-'))),),
              ],
            ),
            Row(
              children: [
                Expanded(child: OutlinedButton(onPressed: (){}, child: (Text('1'))),),
                Expanded(child: OutlinedButton(onPressed: (){}, child: (Text('2'))),),
                Expanded(child: OutlinedButton(onPressed: (){}, child: (Text('3'))),),
                Expanded(child: OutlinedButton(onPressed: (){}, child: (Text('+'))),),

              ],
            ),
            Row(
              children: [
                Expanded(child: OutlinedButton(onPressed: (){}, child: (Text('+/-'))),),
                Expanded(child: OutlinedButton(onPressed: (){}, child: (Text('0'))),),
                Expanded(child: OutlinedButton(onPressed: (){}, child: (Text('.'))),),
                Expanded(child: OutlinedButton(onPressed: (){}, child: (Text('='))),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}