import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main(){
  runApp(CounterApp());
}

class CounterApp extends StatelessWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}

class CounterPage extends HookWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counter=useState<int>(0);




    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter.value++;
        },
      ),
      body: SafeArea(
        child: Center(
          child: Text("${counter.value}", style:TextStyle(fontSize: 50)
          ),
        ),
      ),
    );
  }
}
