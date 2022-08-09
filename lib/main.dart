import 'package:flutter/material.dart';
import 'package:deep_flutter_learn/route_generator.dart';
import 'package:deep_flutter_learn/second_page.dart';

void main() {
  runApp(MaterialApp(
  title: 'Flutter Demo',
  theme: ThemeData(
  primarySwatch: Colors.blue,
  ),
  home: FirstRoute(),
    initialRoute: '/',
    onGenerateRoute: RouteGenerator.generateRoute,
  ));
}

class FirstRoute extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('First Screen'),
        ),
        body: Center(
          child: RaisedButton(
            child: Text('Click Here'),
            color: Colors.orangeAccent,
            onPressed: () {
              Navigator.of(context).pushNamed('/second');
            },
          ),
        ),
      );
  }
}

