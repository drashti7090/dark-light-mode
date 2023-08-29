
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app_color.dart';



void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      darkTheme: ThemeData.dark(),
      home: Mode(),


    )
  );
}
class Mode extends StatefulWidget {
  const Mode({super.key});

  @override
  State<Mode> createState() => _ModeState();
}

class _ModeState extends State<Mode> {
  Color color=Colors.green;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("hello,i am flutter developer",style: TextStyle(
            color: AppColor.greenColor),
          ),
        ],
      ),
     floatingActionButton: FloatingActionButton(onPressed: () {
       print("is ${Get.isDarkMode}");
       Get.changeTheme(Get.isDarkMode?ThemeData.light():ThemeData.dark());
       if(Get.isDarkMode){
         AppColor.greenColor=Colors.deepOrange;
         color=Colors.red;
       }
       else{
         AppColor.greenColor=Colors.green;
         color=Colors.green;
       }
     },
     child: Icon(Icons.add)),
    );
  }
}


