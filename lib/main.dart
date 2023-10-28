
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var myOpacity = 1.0;
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: myOpacity,
              duration: Duration(seconds: 2),
            
            child:FlutterLogo(
              size: 50,
            ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (isVisible) {
                      myOpacity = 0.0;
                      isVisible = false;
                    } else {
                      myOpacity = 1.0;
                      isVisible = true;
                    }
                  });
                },
                child: Text('close'))
          ],
        ),
      ),
    );
  }
}

