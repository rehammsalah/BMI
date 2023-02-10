import 'file:///C:/Users/reham/IdeaProjects/BMI/lib/layout/BMICalc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class result extends StatefulWidget {


   final int age;
  final bool isfemale;
   final double res;

  result({
    this.isfemale,
    this.age,
    this.res,
  });

  @override
  _resultState createState() => _resultState();
}

class _resultState extends State<result> {

  bool resl  ;

  @override
  Widget build(BuildContext context) {



    return Scaffold(


      appBar: AppBar(
        title: Text(
          'Result'
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            Text(
              'Gender : ${widget.isfemale?'female':'male'}',
              style: TextStyle(
                fontSize: 20,
                    fontWeight: FontWeight.bold,
                  color: Color(0xfffff2cc)
              ),
            ),
            Text(
              'Result : ${widget.res.round()}',

              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                  color: Color(0xfffff2cc)
              ),
            ),
            Text(
              'Age : ${widget.age}',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                  color: Color(0xfffff2cc)              ),
            ),
            SizedBox(height: 60,),
            Text(


              '${(widget.res>25)?'Overweight':'Healthy Weight'}',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xfffff2cc)
              ),
            ),
          ],
        ),
      ),

    );
  }
}
