import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget
{
  final bool isMale;
  final double result;
  final int age;

  BMIResultScreen(this.result,this.age,this.isMale){
// print("Result: "+result.toString());
// print("Age: "+age.toString());
// print("isMale: "+isMale.toString());
}

  String get resulttext {
    String r;
    if (result >= 30) {
      r = 'Obese';
    } else if (result >= 18.5 && result <= 24.9) {
      r = 'Normal';
    } else if (result >= 25 && result <= 29.9) {
      r = 'Overweight';
    } else {
      r = 'Thin';
    }
    return r;
  }

   String get resultmsg {
    String r;
    if (result >= 30) {
      r = 'You have an obese body.';
    } else if (result >= 18.5 && result <= 24.9) {
      r = 'You have a normal body weight. Good Job!';
    } else if (result >= 25 && result <= 29.9) {
      r = 'You have an OverWeight body.';
    } else {
      r = 'You have a Thin body.';
    }
    return r;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text(
          "YOUR RESULT",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        backgroundColor: const Color(0xff1D2136),
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: const Color(0xff323244),
                width: 380,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                   Text(' $resulttext ', style: const TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                    Text(
                      " ${result.round()}",
                      style: const TextStyle(
                        fontSize: 100.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(' $resultmsg ', 
                    style: const TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
          height: 75.0,
          color: const Color.fromARGB(255, 230, 20, 73),
          child: MaterialButton(child:const Text(
            'RE-CALCULATE',
          style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
          ),
          ),
            onPressed: () { 
            Navigator.pop(context);
           },) 
          ),
        ],
      ),
      
      
    );
  }
}