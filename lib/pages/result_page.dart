import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  double? ageNew, heightNew, weightNew, bmiResult;

  ResultPage({this.ageNew, this.weightNew, this.bmiResult, this.heightNew});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff26273A),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Your BMI Result",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
              SizedBox(
                height: 150,
              ),
              Text(
                getResult(bmi: bmiResult!.toDouble()),
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 40,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 100,
              ),
              Text(
                bmiResult!.toStringAsFixed(2),
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 80,
                    fontWeight: FontWeight.w700),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Container(
                  width: 500,
                  height: 70,
                  child: ElevatedButton(
                    child: Text(
                      "RE-CALCULATE",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffEB1555),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed("second_page");
                    },
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

getResult({required double bmi}) {
  if (bmi < 18.5) {
    return "Under Weight";
  } else if (bmi >= 18.5 && bmi <= 25) {
    return "Normal Weight";
  } else if (bmi >= 25 && bmi <= 30) {
    return "Over Weight";
  }
}
