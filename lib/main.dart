import 'package:flutter/material.dart';
import 'widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Paper',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const MyHomePage(title: 'The Paper'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  Widget _login(BuildContext context){
    return TextButton(
      onPressed: () {
	Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginScreen()));
      },
      child: Text('this'),
    );
  }


@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
	toolbarHeight: 70,
	title: 	titleBtn(context, MyApp(), 70),
	titleSpacing: 0,
	actions: <Widget>[
	    Padding(
	      padding: EdgeInsets.only(right: 0,),
	      child: Align(
		alignment: Alignment.centerRight,
		child: FlatButton(
		  child: Image.asset('assets/Login_btn.png', height: 50), onPressed: () {
		    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginScreen()));
		  },
		), 
	      ),
	    ),
	]
      ),
      body: Center(
	child: postWdgt(context),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
	toolbarHeight: 70,
	titleSpacing: 0,
	title: titleBtn(context, MyApp(), 70),
      ),
      body: Center(
	child: FlatButton(
	  color: Colors.brown,
	  textColor: Colors.white,
	  onPressed: () {
	      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyApp()));
	  },
	  child: Text('GO TO HOME'),
	),
      ),
    );																								
  }
}
