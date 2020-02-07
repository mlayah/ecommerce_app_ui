import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:shop_watch/style.dart';
import 'package:clip_shadow/clip_shadow.dart';
import 'package:shop_watch/widgets/iconbutton.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XffCDDEEC),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 100,
              ),
              ClipShadow(
                clipper: RoundedDiagonalPathClipper(),
                boxShadow: softUiShadow,
                child: Container(
                  height: 450,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(36.0)),
                    color: Color(0XffCDDEEC),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 60,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        // children: iconBtns.map((item) {
                        //   //return _customIconButton(item, isSelected);
                        //   return CustomIconButton(item);
                        // }).toList(),
                        children: <Widget>[
                          CustomIconButton(iconName: Icons.dehaze,)
                          
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Widget _customIconButton(iconImage, isSelected) {
//   return Container(
//     height: 60,
//     width: 60,
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(10),
//       color: Color(0xFFEFF4F8),
//       boxShadow: softUiShadow,
//       gradient: isSelected ? activeGradient : null,
//     ),
//     child: Center(
//       child: Icon(
//         iconImage,
//         size: 30,
//         color: isSelected ? Colors.white : Colors.black,
//       ),
//     ),
//   );
// }
