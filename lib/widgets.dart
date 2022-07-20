
import 'package:flutter/material.dart';


class PostWidget extends StatelessWidget{
  const PostWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){	
    return Container(  
      child: Text('test')
    );
  }
}
class LoginColumn extends StatelessWidget{
  const LoginColumn({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){	
    return Column(
      //mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget> [
	Padding(
	  padding: EdgeInsets.only(top: 100, left: 50, right: 50),
	  child: TextField(
	    decoration: InputDecoration(
	      border: OutlineInputBorder(),
	      hintText: 'Username',
	    ),
	  ),
	),
	Padding(
	  padding: EdgeInsets.only(top: 50, left: 50, right: 50),
	  child: TextField(
	    decoration: InputDecoration(
	      border: OutlineInputBorder(),
	      hintText: 'Password',
	    ),
	  ),
	),
	Padding(
	  padding: EdgeInsets.only(top: 100, left: 50, right: 50),
	  child: TextButton(
	    onPressed:(){null;},
	    child: Text('Login', style: TextStyle(color: Colors.white)),
	    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.brown))
	  )
	),
      ]
    );
  }
}
      //body: Center(
//	child: TextField(
	//  decoration: InputDecoration(
	 // border: OutlineInputBorder(),
	 // hintText: 'Enter a search term',
	 // ),
//	),       
   // ),


