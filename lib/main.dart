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
            padding: const EdgeInsets.fromLTRB(0, 0, 25, 0),
            child: InkWell(
              child: Image.asset(
                "assets/images/schedule.jpg",
                height: 20.0,
                width: 20,
              ),
              onTap: () {
                print("Hola munddo");
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 25, 0),
            child: InkWell(
              child: Image.asset(
                "assets/images/talk.png",
                height: 20.0,
                width: 20,
              ),
              onTap: () {
                print("Hola munddo");
              },
            ),
          ),
          Icon(Icons.search),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 15, 0),
              child: Icon(Icons.dehaze),
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              "Continúa estudiando",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
          ),
          Container(
            height: 150.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, position) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 200.0,
                    height: 150.0,
                    color: Colors.blue,
                    child: Text("Position $position"),
                  ),
                );
              },
            ),
          ),
          DefaultTabController(
            length: 3,
            child: Expanded(
              child: Column(
                children: <Widget>[
                  TabBar(
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Colors.lightBlue,
                    tabs: [
                      Tab(
                        text: "Cursos",
                      ),
                      Tab(
                        text: "WorkShops",
                      ),
                      Tab(
                        text: "Especialidades",
                      ),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        GridView.builder(
                            gridDelegate: null,
                            itemBuilder: (context, position){
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 200.0,
                                  height: 150.0,
                                  color: Colors.blue,
                                  child: Text("Position $position"),
                                ),
                              );
                            },
                        ),
                        Container(color: Colors.red),
                        Container(color: Colors.yellow),
                        Container(color: Colors.blue),
                      ],
                    ),
                  ),
                 ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
