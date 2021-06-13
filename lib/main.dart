import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  List<String> l = ['A1','A2','A3jh'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('ListView')
      ),
      body: ListView.builder(
          itemCount: l.length,
          itemBuilder: (BuildContext cxt,int index){
            return Container(
              height: 50,
              width: double.infinity,
              color: Colors.blue,
              margin: EdgeInsets.all(5),
              child: Text('${l[index]}',textAlign: TextAlign.center,)
            );
          }),
    );

  }

}
