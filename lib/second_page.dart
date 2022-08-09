import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child:RaisedButton(
          color: Colors.blueGrey,
          onPressed: (){
            Navigator.of(context).pop();
          },
          child: Text("Go Back"),
        )
      ),
    );
  }
}