import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:easy_localization/easy_localization.dart';

class MyHomePage extends StatefulWidget {
  static const String id='home_page';
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('flutter').tr(),centerTitle: true,),
      body:SafeArea(
          child:Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment:MainAxisAlignment.end,
              children: [
                Text("flutter",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w800),).tr(),
                SizedBox(height: 300,),

                Row(children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      color: Colors.red,
                      child: FlatButton(
                          onPressed: (){
                            setState(() {
                              context.locale = Locale('en', 'US');
                            });
                          },
                          child: Text('English',style: TextStyle(color: Colors.white,fontSize: 13))
                      ),

                    ),
                  ),SizedBox(width: 10,),
                  Expanded(
                    child: Container(
                      height: 50,
                      color: Colors.green,
                      child: FlatButton(
                          onPressed: (){
                            setState(() {
                              context.locale = Locale('ja', 'JA');
                            });
                          },
                          child: Text('Japanese',style: TextStyle(fontSize: 13,color: Colors.white))
                      ),

                    ),
                  ),SizedBox(width: 10,),Expanded(
                    child: Container(
                      height: 50,
                      color: Colors.blue,
                      child: FlatButton(
                          onPressed: (){
                            setState(() {
                              context.locale = Locale('ko', 'KO');
                            });
                          },
                          child: Text('Korean',style: TextStyle(color: Colors.white,fontSize: 13),)
                      ),

                    ),)
                  // ),SizedBox(width: 10,),Expanded(
                  //   child: Container(
                  //     height: 50,
                  //     color: Colors.indigo,
                  //     child: FlatButton(
                  //         onPressed: (){
                  //           setState(() {
                  //             context.locale = Locale('fr', 'FR');
                  //           });
                  //         },
                  //         child: Text('Franch',style: TextStyle(color: Colors.white,fontSize: 13),)
                  //     ),
                  //
                  //   ),
                //  ),
                ],)
                ,SizedBox(height: 20,)
              ],),

          )
      ),
    );
  }
}

