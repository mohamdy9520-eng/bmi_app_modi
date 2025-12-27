
import 'package:flutter/material.dart';

class SampleScreen extends StatelessWidget{
  SampleScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration:BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
            colors: [
              Color(0xFF5F9BEE),
              Color(0xFFE96AC8),
            ]
          )
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),

              child: Center(
                child: Icon(Icons.beach_access, color: Color(0xfffa562c),
                size: 50,
                ),
              ),
            ),

            SizedBox(height: 20,),
            Text("This is a Sample Test",
            style: TextStyle(color: Colors.white, fontSize: 16))
          ],
        ),
      ),
      
    );
  }
}