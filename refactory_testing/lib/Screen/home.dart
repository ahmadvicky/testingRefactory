import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



class HomeScreen extends StatefulWidget {

  // HomeScreen({});

  @override
  _HomeScreen createState() {
    return _HomeScreen();
  }
}

class _HomeScreen extends State<HomeScreen> {

  String hasil = "";
  final _text = TextEditingController();


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 10,right: 10),
              child: TextField(
                controller: _text,
              ),
            ),
            Container(
              child: Text(
                'Output : $hasil'
              ),
            ),
            GestureDetector(
              onTap: (){
                hasil = _text.text.split('').reversed.join();
                setState(() {});
              },
              child: Container(
                child: Text(
                  'Reverse'
                ),
              ),
            )
          ],
        ),
      )
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();


  }

}