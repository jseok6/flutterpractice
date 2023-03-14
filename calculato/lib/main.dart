import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class OutlineCircleButton extends StatelessWidget {
  OutlineCircleButton({
    Key? key,
    this.onTap,
    this.borderSize: 0.5,
    this.radius: 20.0,
    this.borderColor: Colors.black,
    this.foregroundColor: Colors.white24,
    this.child,
  }) : super(key: key);

  final onTap;
  final radius;
  final borderSize;
  final borderColor;
  final foregroundColor;
  final child;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        width: radius,
        height: radius,
        decoration: BoxDecoration(
          border: Border.all(color: borderColor, width: borderSize),
          color: foregroundColor,
          shape: BoxShape.circle,
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
              child: child??SizedBox(),
              onTap: () async {
                if(onTap != null) {
                  onTap();
                }
              }
          ),
        ),
      ),
    );
  }
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
                Expanded(child: OutlinedButton(onPressed: (){}, child: (Text('C'))),),
                Expanded(child: OutlinedButton(onPressed: (){}, child: (Text('()'))),),
                Expanded(child: OutlinedButton(onPressed: (){}, child: (Text('%'))),),
                Expanded(child: OutlinedButton(onPressed: (){}, child: (Text('/'))),),
              ],

            ),
            Row(
              children: [
                Expanded(child: OutlinedButton(onPressed: (){}, child: (Text('7'))),),
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

                OutlineCircleButton(
                    child: Icon(Icons.seven_k_plus_sharp),
                    radius: 60.0,
                    borderSize: 0.5,
                    onTap: () async {
                    }
                ),
                Expanded(
                  child: SizedBox(
                    width: 40,
                    height:40,

                    child: OutlinedButton(
                      onPressed: (){},
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.grey,
                        primary: Colors.white
                      ),
                      child: const Text("."),
                    ),
                  )
                ),
                Expanded(
                  child: SizedBox(
                    width: 40,
                    height: 40,

                    child: OutlinedButton(
                      onPressed: (){},
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.green,
                        primary: Colors.white,
                        
                      ), child: const Text("="),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}



