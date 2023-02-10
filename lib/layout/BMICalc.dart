import 'dart:math';

import 'file:///C:/Users/reham/IdeaProjects/BMI/lib/modules/result_screens/results.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class calc extends StatefulWidget {
  @override
  calcState createState() => calcState();
}

class calcState extends State<calc> {
  bool isfemale = true;
  double val =150;
  var weight = 60;
  int age =20;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI Calculator ')),


        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.black,
        child: Column(

          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(

                  children: [
                    Expanded(
                        child: GestureDetector(
                          onTap: ()
                          {
                            setState(() {
                              isfemale=true;
                            });


                          }
                          ,
                          child: Container(

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(
                                    image: AssetImage('assets/images/fe.png'),
                                    width: 80,
                                    height: 80,
                                  ),
                                  Text('Female',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,

                                  ),)
                                ],

                              ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: isfemale?Color(0xfffff2cc):Colors.white24,
                            ),

                          ),
                        )
                    ),
                    SizedBox( width: 20,),
                    Expanded(
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              isfemale=false;
                            });
                          },
                          child: Container(

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(
                                    image: AssetImage('assets/images/ma.png'),
                                    width: 90,
                                    height: 90,
                                  ),
                                  Text('Male',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,

                                    ),)
                                ],

                              ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: isfemale?Colors.white24:Color(0xfffff2cc),
                            ),

                          ),
                        )
                    ),
                  ],

                ),
              ),
            ),
            SizedBox( height: 10,),
            Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    width: double.infinity,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(20.0),
               color: Colors.white24,
             ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('HEIGHT',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,

                      ),),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('${val.round()}',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w900,

                          ),),
                        Text('cm',
                          style: TextStyle(
                            fontSize: 15,
                            textBaseline: TextBaseline.alphabetic,
                            fontWeight: FontWeight.w900,

                          ),),
                      ],
                    ),
                    Slider(
                      inactiveColor: Colors.black,
                      activeColor: Color(0xfffff2cc),
                        value: val,
                        min: 80,
                        max: 220,
                        onChanged: (value){
                          setState(() {
                            val=value;
                          });
                        }
                    ),


                  ],
              ),
            ),
                )),
            SizedBox( height: 10,),
            Expanded(child: Row(

              children: [
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.white24,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('AGE',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,

                                ),),
                              Text('$age',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w900,

                                ),),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                      onPressed: (){
                                        setState(() {
                                          age--;

                                        });
                                      },
                                    heroTag: 'age--',
                                    child: Icon(Icons.remove,color: Colors.black,),
                                    backgroundColor: Color(0xfffff2cc),
                                    mini: true,

                                  ),
                                  FloatingActionButton(
                                    onPressed: (){
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    heroTag: 'age++',
                                    child: Icon(Icons.add,color: Colors.black,),
                                    backgroundColor: Color(0xfffff2cc),
                                    mini: true,

                                  ),



                                ],
                              )

                            ],
                          )

                      ),
                    )),
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.white24,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('WEIGHT ',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,

                                ),),
                              Text('$weight',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w900,

                                ),),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    onPressed: (){
                                      setState(() {
                                        weight--;
                                      });
                                    },
                                    heroTag: 'weight--',
                                    child: Icon(Icons.remove,color: Colors.black,),
                                    backgroundColor: Color(0xfffff2cc),
                                    mini: true,

                                  ),
                                  FloatingActionButton(
                                    onPressed: (){
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                    heroTag: 'weight++',
                                    child: Icon(Icons.add,
                                    color: Colors.black,),
                                    backgroundColor: Color(0xfffff2cc),
                                    mini: true,

                                  ),



                                ],
                              )

                            ],
                          )

                      ),
                    )),
              ],

            ),),
            Container(
              width: double.infinity,
              child: MaterialButton(


                color: Color(0xfffff2cc),
                height: 50,
                  onPressed: (){


                 double res = weight/pow(val / 100, 2);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context)=>result(
                              isfemale: isfemale,
                              res: res,
                              age: age,

                            ),
                        )
                    );


                  },
                  child: Text(
                      'Calculate',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black

                    ),

                  ),

                  ),
            )


          ],


        ),
      ),

    );
  }
}
