import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xff1C2135),
      appBar: AppBar(
        backgroundColor: Color(0xff24263B),
        title: const Text('BMI Calculator',
          style: TextStyle(
            color: Colors.white,
          fontWeight: FontWeight.w600)

        ),
        centerTitle: true,

      ),

      body: SingleChildScrollView(
        child:
        Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          children: [
            //Gender Row
            Row(
              children: [
                Expanded(
                  child: Container(height: 180,
                  width: 155,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xff24263B)
                  ),
                  child: Column(
                    children: [
                      Icon(Icons.male,size: 120,color: Colors.white,),
                      Text("Male",style: TextStyle(fontSize: 20,color: Colors.white),)
                    ],
                  ),
                  ),
                ),
                SizedBox(width: 9,),
                Expanded(
                  child: Container(
                    height: 180,
                    width: 155,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xff24263B)
                    ),
                    child: Column(
                      children: [
                        Icon(Icons.female,size: 120,color: Colors.white,),
                        Text("Female",style: TextStyle(fontSize: 20,color: Colors.white),)
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25,),
            //Height Container
            Container(
              width:double.infinity,
              height: 189,
              decoration:BoxDecoration(borderRadius:BorderRadius.circular(12),
              color:Color(0xff333244)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Height", style: TextStyle(fontSize: 20, color: Colors.white)),
                  Text.rich(TextSpan(
                    children: [
                      TextSpan(
                        text: "150",
                        style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                          color: Colors.white
                      )),
                      TextSpan(text: "cm",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 15
                          )
                          ),

                    ]
                  )),
                  Slider(
                    min: 0,
                    max: 300,
                    activeColor: Color(0xffE83D67),
                      value: 170, onChanged:(value){
                    print(value);
                    //Inactive Color
                  },)
              ],
              ),
            ),

            SizedBox(height: 29,),

            //Data Row
            Row(
              children: [
                Container(
                padding: EdgeInsets.only(top: 5, bottom: 10),
                //Buttom Vertical: 20 ~~Overflowed by 15 pixels
                width:155,
                height: 180,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
                color: Color(0xff24263B)),
                child: Column(
                  children: [
                    Text("Weight", style: TextStyle(fontSize:20, color: Colors.white ),),
                    Text("60", style: TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.w700),),
                    SizedBox(height:21),
                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        FloatingActionButton.small(onPressed: (){},
                          backgroundColor: Color(0xff8B8C9E),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(100),
                        ),
                            child: Icon(Icons.remove,color: Colors.white,),
                        ),


                        FloatingActionButton.small(onPressed: (){},
                          backgroundColor: Color(0xff8B8C9E),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(100),
                          ),
                          child: Icon(Icons.add,color: Colors.white,),
                        ),

                        
                      ],
                    )
                  ],
                ),
              ),


                SizedBox(width: 9,),


                Container(
                padding: EdgeInsets.only(top: 5, bottom: 10),
                //Buttom Vertical: 20 ~~Overflowed by 15 pixels
                width:155,
                height: 180,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
                    color: Color(0xff24263B)),
                child: Column(
                  children: [
                    Text("Age", style: TextStyle(fontSize:20, color: Colors.white ),),
                    Text("26", style: TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.w700),),
                    SizedBox(height:21),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        FloatingActionButton.small(onPressed: (){},
                          backgroundColor: Color(0xff8B8C9E),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(100),
                          ),
                          child: Icon(Icons.remove,color: Colors.white,),
                        ),


                        FloatingActionButton.small(onPressed: (){},
                          backgroundColor: Color(0xff8B8C9E),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(100),
                          ),
                          child: Icon(Icons.add,color: Colors.white,),
                        ),


                      ],
                    )
                  ],
                ),
                )


              ],
            ),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                width: double.infinity,
                //height=100~~~overflow by 72 pixels
                height: 100,
                child: ElevatedButton(
                  onPressed: () {
                    // calculate BMI
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

    )
      );



  }
}