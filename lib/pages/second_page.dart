import 'package:bmiscore/pages/result_page.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  double height = 40;
  double weight = 0, age = 0;
  bool male = false;
  bool female = false;
  double? score;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: const Color(0xff3e3962),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xff3e3962),
          title: const Text(
            'BMI CALCULATOR',
            style: TextStyle(fontSize: 25),
          ),
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  age = 0;
                  male = false;
                  female = false;
                  height = 40;
                  weight = 0;
                });
              },
              icon: const Icon(Icons.refresh),
            ),
          ],
        ),
        body: Container(
          child: Column(
            children: [
              const SizedBox(
                height: 110,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 150,
                    width: 190,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.transparent,
                          blurRadius: 10.0,
                          spreadRadius: 0.0,
                        ),
                      ],
                      color: Colors.white.withOpacity(0.1),
                    ),
                    child: Column(children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            male = true;
                            female = false;
                          });
                        },
                        child: Icon(
                          Icons.male,
                          color: (male) ? Colors.pink : Colors.white,
                          size: 100,
                        ),
                      ),
                      const Text('MALE',
                          style: TextStyle(fontSize: 25, color: Colors.white))
                    ]),
                  ),
                  Container(
                    height: 150,
                    width: 190,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.transparent,
                          blurRadius: 10.0,
                          spreadRadius: 0.0,
                        ),
                      ],
                      color: Colors.white.withOpacity(0.1),
                    ),
                    child: Column(children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            male = false;
                            female = true;
                          });
                        },
                        child: Icon(
                          Icons.female,
                          color: (female) ? Colors.pink : Colors.white,
                          size: 100,
                        ),
                      ),
                      const Text('FEMALE',
                          style: TextStyle(fontSize: 25, color: Colors.white))
                    ]),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 200,
                    width: 390,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.transparent,
                          blurRadius: 10.0,
                          spreadRadius: 0.0,
                        ),
                      ],
                      color: Colors.white.withOpacity(0.1),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'HEIGHT',
                          style: TextStyle(
                              fontSize: 20, color: Colors.blueGrey.shade200),
                        ),
                        Text(
                          height.toInt().toString() + "cm",
                          style: const TextStyle(
                              fontSize: 32,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Slider(
                          activeColor: Colors.pink,
                          inactiveColor: Colors.white,
                          value: height.toDouble(),
                          onChanged: (value) {
                            setState(() {
                              height = value.toDouble();
                            });
                          },
                          min: 40,
                          max: 300,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 190,
                    width: 190,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.transparent,
                          blurRadius: 10.0,
                          spreadRadius: 0.0,
                        ),
                      ],
                      color: Colors.white.withOpacity(0.1),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("WEIGHT",
                            style: TextStyle(
                                fontSize: 20, color: Colors.blueGrey.shade200)),
                        Text(
                          '$weight',
                          style: const TextStyle(
                              fontSize: 50,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              icon: const Icon(
                                Icons.add_circle_sharp,
                                color: Colors.pink,
                                size: 50,
                              )),
                          const SizedBox(
                            width: 80,
                          ),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  if (weight > 0) {
                                    weight--;
                                  } else {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(const SnackBar(
                                      backgroundColor: Colors.grey,
                                      content: Text(
                                        "Invalid Weight",
                                      ),
                                    ));
                                  }
                                });
                              },
                              icon: const Icon(
                                Icons.remove_circle,
                                color: Colors.pink,
                                size: 50,
                              )),
                        ]),
                      ],
                    ),
                  ),
                  Container(
                    height: 190,
                    width: 190,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.transparent,
                          blurRadius: 10.0,
                          spreadRadius: 0.0,
                        ),
                      ],
                      color: Colors.white.withOpacity(0.1),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("AGE",
                            style: TextStyle(
                                fontSize: 20, color: Colors.blueGrey.shade200)),
                        Text(
                          '$age',
                          style: const TextStyle(
                              fontSize: 50,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              icon: const Icon(
                                Icons.add_circle_sharp,
                                color: Colors.pink,
                                size: 50,
                              )),
                          const SizedBox(
                            width: 80,
                          ),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  if (age > 0) {
                                    age--;
                                  } else {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(const SnackBar(
                                      backgroundColor: Colors.grey,
                                      content: Text(
                                        "Invalid Age",
                                      ),
                                    ));
                                  }
                                });
                              },
                              icon: const Icon(
                                Icons.remove_circle,
                                color: Colors.pink,
                                size: 50,
                              )),
                        ]),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.center,
                color: Colors.pink,
                height: 80,
                width: double.infinity,
                child: InkWell(
                  onTap: () {
                    if (weight > 0 && age > 0 && height > 30) {
                      score = (weight * 10000) / (height * height);
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ResultPage(
                            ageNew: age,
                            bmiResult: score,
                            heightNew: height,
                            weightNew: weight,
                          ),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          backgroundColor: Color(0xff4C4F5E),
                          content: Text(
                            "Please enter values",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      );
                    }
                  },
                  child: Text(
                    "CALCULATE YOUR BMI",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
