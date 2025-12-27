import 'package:bmi_app/widgets/gender_container.dart';
import 'package:bmi_app/widgets/gender_info.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isMale=false;
  bool isFemale=false;
  int height=50;
  int weight=30;
  int age=5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C2135),
      appBar: AppBar(
        backgroundColor: Color(0xff24263B),
        title: const Text(
          'BMI Calculator',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            children: [
              //Gender Row
              Row(
                children: [
                  GenderContainer(title: "Male", icon: Icons.male,
                  color: isMale? Colors.red :Color(0xff24263B),
                  onTap:(){
                    setState(() {
                      isMale=true;
                      isFemale=false;
                    });
                  }),
                  SizedBox(width: 9),
                  GenderContainer(title: "Female", icon: Icons.female,
                  color:isFemale? Colors.red :Color(0xff24263B),
                  onTap: (){
                    setState(() {
                      isMale=false;
                      isFemale=true;
                    });
                  },),
                ],
              ),
              SizedBox(height: 25),
              //Height Container
              Container(
                width: double.infinity,
                height: 189,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xff333244),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Height",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: height.toString(),
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          TextSpan(
                            text: "cm",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Slider(
                      min: 0,
                      max: 300,
                      activeColor: Color(0xffE83D67),
                      value: height.toDouble(),
                      onChanged: (value) {
                        setState(() {
                          height=value.toInt();
                        });
                      },
                    ),
                  ],
                ),
              ),

              SizedBox(height: 29),

              //Data Row
              Row(
                children: [
                  GenderInfo(title: "Weight", number:weight,
                  increaseOnTap:(){
                    setState(() {
                      weight++;
                    });
                  },
                  decreaseOnTap: (){
                    setState(() {
                      if(weight>30){
                        weight--;
                      }
                    });;
                  },),
                  SizedBox(width: 9),
                  GenderInfo(title: "Age", number:age,
                      increaseOnTap:(){
                    setState(() {
                      age++;
                    });

                      },
                      decreaseOnTap: (){
                    if(age>10){
                      setState(() {
                        age--;
                      });
                    }

                      },
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: SizedBox(
                  width: double.infinity,

                  height: 100,
                  child: ElevatedButton(
                    onPressed: () {

                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFE83D66),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Text(
                      'Calculate',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
