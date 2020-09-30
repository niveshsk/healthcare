import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main()=> runApp(MaterialApp(
    home:MyHomePage(),
    debugShowCheckedModeBanner: false,
    theme:ThemeData(
        primarySwatch: Colors.blue
    )
));

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State {

  TextEditingController controller=TextEditingController();
  FlutterWebviewPlugin flutterWebviewPlugin= FlutterWebviewPlugin();
  
  var url= "http://192.168.43.73/code/index.php/login";

  @override
  void initState() {
    super.initState();


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        WebviewScaffold(
          url: url,
          withZoom: true,
          hidden: true,
          withLocalStorage: true,

          initialChild: Container(
              child:Center(child: Text("Loading Health care System"),)
          ),


        ),
    );


    }
  }

