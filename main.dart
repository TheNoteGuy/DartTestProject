import 'dart:math';
import 'package:flutter/material.dart';

void main()
{
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {

  double count = 0;
  double countswitch = 0;
  bool gif = false;
  bool gif2 = false;
  var rng = Random();
  Color test = Colors.purple;
  Color testSenko = Colors.orangeAccent;
  Color testPurple = Colors.purple;
  Color testShiro = Colors.lightGreenAccent;
  String appbartexttest = "The UwU Clicker";



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor : test,
          centerTitle: true,
          title: Text(appbartexttest),
          actions: <Widget>[
            IconButton(
                onPressed:(){
                  setState(() {
                    if(countswitch == 0){
                      gif2 = false;
                      gif = true;
                      test = testSenko;
                      appbartexttest = "You found senko!";
                      countswitch = 1;
                    return;
                    }
                    if(countswitch == 1){
                      gif = false;
                      gif2 = true;
                      test = testShiro;
                      appbartexttest = "You found shiro!";
                      countswitch = 0;
                      return;
                    }
                  });
                },
                icon: const Icon(Icons.content_paste_search))
          ],
        ),
        body: Container(
          alignment: Alignment.topCenter,
          margin: const EdgeInsets.only(left:31, top:50),
          padding: const EdgeInsets.all(10),
          height: 100,
          width: 300,
          child: Text('$count', style: const TextStyle(fontSize: 30)),
        ),
        floatingActionButton: Stack(
          children: <Widget>[
            if(gif)Padding(
                padding: const EdgeInsets.only(left:31, top:150),
                child:
                Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                        "images/Download.gif",
                        height: 600,
                        width: 559
                    )
                )
            ),
            if(gif2)Padding(
                padding: const EdgeInsets.only(left:31, top:150),
                child:
                Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                        "images/ShiroGif.gif",
                        height: 600,
                        width: 540
                    )
                )
            ),
          Padding(padding: const EdgeInsets.only(left:31),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: FloatingActionButton(
                  backgroundColor: test,
                  child: const Icon(Icons.remove),
                  onPressed: (){
                setState(() {
                count--;
                if(rng.nextInt(25) == 24){
                  gif2 = false;
                  gif = true;
                  test = testSenko;
                  appbartexttest = "You found senko!";
                  return;
                }
                else if(rng.nextInt(25) == 23){
                  gif = false;
                  gif2 = true;
                  test = testShiro;
                  appbartexttest = "You found shiro!";
                  return;
                  }
                else{
                  gif = false;
                  gif2 = false;
                  test = testPurple;
                  appbartexttest = "The UwU Clicker";
                  return;
                }
                });
               }
              ),
             ),
           ),
            Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                  backgroundColor: test,
                  child: const Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      count++;
                      if(rng.nextInt(25) == 24){
                        gif2 = false;
                        gif = true;
                        test = testSenko;
                        appbartexttest = "You found senko!";
                        return;
                      }
                      else if(rng.nextInt(25) == 23){
                        gif = false;
                        gif2 = true;
                        test = testShiro;
                        appbartexttest = "You found shiro!";
                        return;
                      }
                      else{
                        gif = false;
                        gif2 = false;
                        test = testPurple;
                        appbartexttest = "The UwU Clicker";
                        return;
                      }
                    });
                  }
              ),
            ),
         Padding(padding: const EdgeInsets.only(left:31),
            child:
            Align(
              alignment: Alignment.bottomCenter,
              child: FloatingActionButton(
                  backgroundColor: test,
                  child: const Icon(Icons.restart_alt),
                  onPressed: () {
                    setState(() {
                      count = 0;
                      if(rng.nextInt(25) == 24){
                        gif2 = false;
                        gif = true;
                        test = testSenko;
                        appbartexttest = "You found senko!";
                        return;
                      }
                      else if(rng.nextInt(25) == 23){
                        gif = false;
                        gif2 = true;
                        test = testShiro;
                        appbartexttest = "You found shiro!";
                        return;
                      }
                      else{
                        gif = false;
                        gif2 = false;
                        test = testPurple;
                        appbartexttest = "The UwU Clicker";
                        return;
                      }
                    });
                  }
               ),
             ),
           ),
          ]
        ),
      )
    );
  }
}
