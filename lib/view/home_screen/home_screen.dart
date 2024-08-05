import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:quiz_app/dummy_db.dart';
import 'package:quiz_app/view/home_screen/widgets/options_card.dart';
import 'package:quiz_app/view/result_screen/result_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int rightAnswerCount = 0;
  int currentQstnIndex = 0;
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    double percentDone = (currentQstnIndex + 1) / DummyDb.question.length;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: SizedBox()),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: LinearPercentIndicator(
                    width: 250,
                    lineHeight: 20,
                    percent: percentDone,
                    center: Text(
                      "${(percentDone * 100).toStringAsFixed(1)}%",
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                    trailing: Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Text(
                        "${currentQstnIndex + 1}/${DummyDb.question.length}",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 10, color: Colors.white),
                      ),
                    ),
                    linearStrokeCap: LinearStrokeCap.roundAll,
                    backgroundColor: Colors.grey,
                    progressColor: Colors.blue,
                  ),
                ),
              ),
              Expanded(child: SizedBox()),
            ],
          ),
        ),
        backgroundColor: Colors.black,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // question section
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade800,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      DummyDb.question[currentQstnIndex]["question"].toString(),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  // options section
                  Column(
                    children: List.generate(
                      4,
                      (index) {
                        List ansOptions =
                            DummyDb.question[currentQstnIndex]["options"] as List;
                        return OptionsCard(
                          borderColor: getColor(index),
                          onOptionsTapped: () {
                            if (selectedIndex == null) {
                              selectedIndex = index;
                              setState(() {});
                              if (selectedIndex ==
                                  DummyDb.question[currentQstnIndex]
                                      ["answerIndex"]) {
                                rightAnswerCount++;
                                print(rightAnswerCount);
                              } else {
                                print("wrong answer");
                              }
                            }
                          },
                          option: ansOptions[index],
                          icon: getIcon(index),
                        );
                      },
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      if (selectedIndex != null) {
                        if (currentQstnIndex < DummyDb.question.length - 1) {
                          currentQstnIndex++;
                          print(currentQstnIndex);
                          setState(() {});
                          selectedIndex = null;
                        } else {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ResultScreen(
                                  rightAnswerCount: rightAnswerCount,
                                ),
                              ));
                        }
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Select a valid choice")));
                      }
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.blue.shade800,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Text(
                        "Next",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Color getColor(int index) {
    if (selectedIndex != null) {
      if (DummyDb.question[currentQstnIndex]["answerIndex"] == selectedIndex &&
          index == selectedIndex) {
        return Colors.green;
      } else if (DummyDb.question[currentQstnIndex]["answerIndex"] !=
              selectedIndex &&
          index == selectedIndex) {
        return Colors.red;
      } else if (DummyDb.question[currentQstnIndex]["answerIndex"] == index) {
        return Colors.green;
      }
    }

    return Colors.grey.shade800;
  }

  Icon? getIcon(int index) {
    if (selectedIndex != null) {
      if (DummyDb.question[currentQstnIndex]["answerIndex"] == selectedIndex &&
          index == selectedIndex) {
        return Icon(Icons.check, color: Colors.white, );
      } else if (DummyDb.question[currentQstnIndex]["answerIndex"] !=
              selectedIndex &&
          index == selectedIndex) {
        return Icon(Icons.close, color: Colors.white);
      }
    }
    return null;
  }
}
