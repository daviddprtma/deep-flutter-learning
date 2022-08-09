import 'package:deep_flutter_learn/second_page.dart';
import 'package:flutter/material.dart';
import 'package:deep_flutter_learn/main.dart';
import 'package:deep_flutter_learn/route_generator.dart';

class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings)
  {
    switch(settings.name){
      case '/':
        return MaterialPageRoute(builder: (_) => FirstRoute());

      case '/second':
        return MaterialPageRoute(builder: (_) => SecondRoute());

        default:
          return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute(){
    return MaterialPageRoute(builder: (_){
      return Scaffold(
        appBar: AppBar(
          title: Text("Error"),
        ),
        body: const Center(
          child: Text("Error"),
        ),
      );
    }
    );
  }
}