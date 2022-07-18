
import 'package:flutter/material.dart';

Widget titleBtn(BuildContext context, app, double appbarHeight){
  return TextButton(
    onPressed: () {
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>app));
    },  
    child: Padding(	
      padding: EdgeInsets.only(left: 5,),
      child: Align( 
	alignment: Alignment.centerLeft,
	child: Image.asset('assets/Logo_title3.png',height: appbarHeight),
      ),
    ),
  );
}

Widget postWdgt(BuildContext context){	
  return Text('test');
//  return Container(	
 //   alignment: Alignment.center,
  //  child: Text('yuh'),
//  );
}




