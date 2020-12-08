import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Testing States'),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: HomePage(),
        backgroundColor: Colors.white,
      ),
    ),
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  void incrementCounter(){
    counter++;
  }

  void decrementCounter(){
    --counter;
  }

  void resetCounter(){
    counter=0;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Text(
                  'Button was pressed $counter times',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
                ),
              ),
              SizedBox(height: 10.00,),
              FloatingActionButton(
                backgroundColor: Colors.green,
                elevation: 10.00,
                onPressed: (){
                  setState(() {
                    incrementCounter();
                  });
                },
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10.00,),
              FloatingActionButton(
                backgroundColor: Colors.red,
                elevation: 10.00,
                onPressed: (){
                  setState(() {
                    decrementCounter();
                  });
                },
                child: Icon(
                  Icons.minimize,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10.00,),
              FloatingActionButton(
                backgroundColor: Colors.blue,
                elevation: 10.00,
                onPressed: (){
                  setState(() {
                    resetCounter();
                  });
                },
                child: Icon(
                  Icons.exposure_zero,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


