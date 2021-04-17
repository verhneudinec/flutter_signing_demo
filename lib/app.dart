
import 'package:flutter/material.dart';
import 'package:flutter_sign_demo/environment/environment.dart';

class MyApp extends StatelessWidget {
  final String envString = Environment.instance().buildConfig.envString;
  final Color envColor = Environment.instance().buildConfig.envColor;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: envColor,
      ),
      home: MyHomePage(title: 'Android Flavors App', text: envString),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title, this.text}) : super(key: key);


  final String title;

  final String text;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                widget.text,
              ),
            ],
          ),
        ),
    );
  }
}
