import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _light = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20),
              // height: 100,
              // width: 50,
              // margin: ,
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              // height: 100,
              // width: MediaQuery.of(context).size.width,
              // margin: EdgeInsets.only(left: 30),
              child: Text(
                'Setting',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
            ),
            Container(
                child: Column(
              children: [
                // height: 80,
                // width: MediaQuery.of(context).size.width,
                Padding(
                  padding: EdgeInsets.only(right: 250),
                  child: Text(
                    'Account',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),

                ListTile(
                  leading: CircleAvatar(
                      radius: 30,
                      backgroundColor: Color.fromARGB(246, 246, 246, 248),
                      child: Icon(Icons.person,
                          color: Color.fromARGB(182, 182, 184, 196))),
                  title: Text('gsgvwjhdv'),
                  trailing: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(246, 246, 246, 248),
                      ),
                      child: Icon(Icons.chevron_right, color: Colors.black)),
                  subtitle: Text('hdsjhsdvgj'),
                ),
              ],
            )),
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                'Setting',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: Color.fromARGB(100, 240, 211, 228),
                  child: Icon(Icons.public,
                      color: Color.fromARGB(221, 221, 120, 59))),
              title: Text('gsgvwjhdv'),
              trailing: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(246, 246, 246, 248),
                  ),
                  child: Icon(Icons.chevron_right, color: Colors.black)),
              subtitle: Text('hdsjhsdvgj'),
            ),
            ListTile(
              leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: Color.fromARGB(226, 227, 247, 254),
                  child: Icon(Icons.notifications,
                      color: Color.fromARGB(200, 29, 164, 224))),
              title: Text('gsgvwjhdv'),
              trailing: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(246, 246, 246, 248),
                  ),
                  child: Icon(Icons.chevron_right, color: Colors.black)),
              subtitle: Text('hdsjhsdvgj'),
            ),
            SwitchListTile(
              title: Text('gsgvwjhdv'),
              // value: _lights,
              // onChange:(bool value){
              // setState((){
              //   _lights=value;
              // });
              // },
              value: _light,
              onChanged: (bool value) {
                setState(() {
                  _light = value;
                });
              },
              secondary: CircleAvatar(
                  radius: 30,
                  backgroundColor: Color.fromARGB(100, 200, 191, 236),
                  child: Icon(Icons.dark_mode,
                      color: Color.fromARGB(150, 86, 49, 251))),
            ),
            ListTile(
              leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: Color.fromARGB(150, 253, 230, 236),
                  child: Icon(Icons.support,
                      color: Color.fromARGB(150, 229, 34, 196))),
              title: Text('gsgvwjhdv'),
              trailing: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(246, 246, 246, 248),
                  ),
                  child: Icon(Icons.chevron_right, color: Colors.black)),
              subtitle: Text('hdsjhsdvgj'),
            ),
          ],
        ),
      ),
    );
  }
}
