import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primaryColor: Colors.white,
      ),
     home: EDteamHome(),
    );
  }
}
class EDteamHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      endDrawer: Drawer(),
      appBar: AppBar(
        title: Image.asset("assets/images/logo.png", height: 40.0),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0,0,25,0),

            child: InkWell(child: Image.asset("assets/images/schedule.jpg", height: 20.0, width: 20,),
              onTap: (){print("Hola munddo");} ,
            ),

          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0,0,25,0),

            child: InkWell(child: Image.asset("assets/images/talk.png", height: 20.0, width: 20,) ,
              onTap: (){print("Hola munddo");} ,
            ),

          ),

          Icon(Icons.search),
          InkWell(
            onTap: (){print("Hello bro!");},
            child: Padding(
              padding: const EdgeInsets.fromLTRB(40,0,15,0),

              child: Icon(Icons.dehaze),
            ),

    )
        ],
      ),
    );
  }

}
