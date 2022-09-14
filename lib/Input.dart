
import 'dart:math';
import 'package:flutter/material.dart';
import 'bmi_result_screen.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color interactivecolor = const Color(0xff24232f);
  Color activecolor = Colors.blueGrey;
  Gender? selectedGender;
  int height = 180;
  int weight = 30 ;
  int age = 15;
  bool IsMale = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
       crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
           Expanded(
            child: Padding (padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        selectedGender = Gender.male;
                        IsMale = true;
                      });
                    },
                    child: Container(
                       decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0,),
                          color: selectedGender == Gender.male ? Colors.blue : const Color.fromARGB(255, 16, 19, 35),
                       ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                              Icons.male,
                              size: 100.0,
                              color: Colors.white,
                            ),
                            SizedBox(height: 15.0,),
                            Text(
                              "MALE",
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                            ),
                        ],
                      ),
                        ), 
                    ),
                  ),



                   const SizedBox(width: 20.0,),
                   Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        selectedGender = Gender.female;
                         IsMale = false;
                      });
                    },
                    child: Container(
                       decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0,),
                          color: selectedGender == Gender.female ? Colors.pink : const Color.fromARGB(255, 16, 19, 35),
                       ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                              Icons.female,
                              size: 100.0,
                              color: Colors.white,
                            ),
                            SizedBox(height: 15.0,),
                            Text(
                              "FEMALE",
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                            ),
                        ],
                      ),
                        ), 
                    ),
                  ),
              ],
            ),
             ),
          ),
          

          const SizedBox(
            height: 0,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                        color: interactivecolor,
                      ),
                    child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Height',
                    style: 
                    TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                        style: const TextStyle(
                          fontSize: 35,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                        const Text(
                          ' CM',
                          style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ), 
                    )],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: const Color(0xFF8D8E98),
                        activeTrackColor: Colors.white,
                        thumbColor: const Color(0xFFEB1555),
                        overlayColor: const Color(0x29EB1555),
                        thumbShape:
                            const RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            const RoundSliderOverlayShape(overlayRadius: 30.0),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 100.0,
                        max: 250.0,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Expanded(
            child: Row(
              children: [
                Expanded(
                  child:
                    Container(
                      margin: const EdgeInsets.all(10.0),
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                    color: interactivecolor,
                  ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'AGE',
                           style: TextStyle(
                              fontSize: 18.0,
                            color: Color(0xFF8D8E98),
                               ),

                          ),
                          const SizedBox(height: 10,),
                          Text(
                            age.toString(),
                            style: const TextStyle(
                             fontSize: 50.0,
                               fontWeight: FontWeight.w900,
                                    ) ,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                backgroundColor:  Colors.blueGrey,
                                child: const Icon(Icons.remove),
                                onPressed: () {
                                  setState(
                                    () {
                                      age--;
                                    },
                                  );
                                },
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              FloatingActionButton(
                                backgroundColor:  Colors.blueGrey,
                                child: const Icon(Icons.add),
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  }),
                            ],
                          )
                        ],
                        ),
                    ),  
                  ),
                  
                  Expanded(
                  child:
                    Container(
                      margin: const EdgeInsets.all(10.0),
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                    color: interactivecolor,
                  ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'WEIGHT',
                            style: TextStyle(
                              fontSize: 18.0,
                            color: Color(0xFF8D8E98),
                               ),
                           
                          ),
                          const SizedBox(height: 10,),
                          Text(
                            weight.toString(),
                              style: const TextStyle(
                             fontSize: 50.0,
                               fontWeight: FontWeight.w900,
                                    ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                backgroundColor:  Colors.blueGrey,
                                child: const Icon(Icons.remove),
                                onPressed: () {
                                  setState(
                                    () {
                                      weight--;
                                    },
                                  );
                                },
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              FloatingActionButton(
                                backgroundColor:  Colors.blueGrey,
                                child: const Icon(Icons.add,),
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  }),
                            ],
                          )
                        ],
                        ),
                    ),  
                  ),
              ],
            ),
            ),
            Container (
            width: double.infinity,
            height: 75.0,
            color: const Color.fromARGB(255, 230, 20, 73),
            child: MaterialButton(
              onPressed: (){
                double result = weight / pow(height/100, 2);
                print(result.round());
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BMIResultScreen(result, age, IsMale),
                  )
                );
              },
              child: const Text(
                "CALCULATE",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                ),
              ),
      ))],
      ),
    );
  }
}

