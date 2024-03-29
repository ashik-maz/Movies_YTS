import 'package:flutter/material.dart';

class AboutDeveloper extends StatefulWidget {
  const AboutDeveloper({super.key});

  @override
  State<AboutDeveloper> createState() => _AboutDeveloperState();
}

class _AboutDeveloperState extends State<AboutDeveloper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Image.asset(
            'images/logo1.png',
            fit: BoxFit.cover,
            height: 50,
            filterQuality: FilterQuality.high,
          ),
          centerTitle: true,), 
      body: Container(
        child: Center(
          child: Column(children: [
            Text("About",style: TextStyle(fontSize: 25),),
            SizedBox(height: 30,),
            Text("application developed by"),
            Text("Md. Ashikuzz Zaman Ashik (CSE 14 Batch, PUST)"),
          
          
          ]),
        ),
      ),  
    );
  }
}