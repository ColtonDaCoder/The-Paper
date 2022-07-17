import 'package:flutter/material.dart';

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
	toolbarHeight: 100,
	leading: Image.asset('assets/The-Paper_Medal.png',),
	leadingWidth: 100,
	title: Padding(
	  child: const Text('The Paper', style: TextStyle(fontSize: 50)),
	  padding: EdgeInsets.only(bottom: 20)
	),
	actions: <Widget>[
	  Padding(
	    child:
	      TextButton(
		child: Text("Login", style: TextStyle(fontSize: 50, color: Colors.white)),
		onPressed: null
	      ),
	    padding: EdgeInsets.only(right: 20)
	  ),

	]
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
	    
          ],
        ),
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
	title: const Text('Navigate to a new screen on Button click'),    
	backgroundColor: Colors.brown,
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
