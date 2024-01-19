import 'package:flutter/material.dart';

class SurveyScreen extends StatefulWidget {
  const SurveyScreen({super.key});

  @override
  State<SurveyScreen> createState() => _SurveyScreenState();
}

class _SurveyScreenState extends State<SurveyScreen> {
  List<Map<String, dynamic>> questions = [
    {
      'id': 1,
      'question': 'Pertanyaan Pertama',
      'skor': 4
    },
    {
      'id': 2,
      'question': 'Pertanyaan Kedua',
      'skor': 2
    },
  ];

  List<String> _value = [];
  var _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent.shade400,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Stepper(
          type: StepperType.horizontal,
          currentStep: _index,
          onStepCancel: () {
            if (_index > 0) {
              setState(() {
                _index -= 1;
              });
            }
          },
          onStepContinue: () {
            if (_index <= 0) {
              setState(() {
                _index += 1;
              });
            }
          },
          onStepTapped: (int index) {
            setState(() {
              _index = index;
            });
          },
          steps: stepQuestion(),
        ),
      ),
    );
  }

  stepQuestion() {
    return [
      Step(content: showQuestion(questions, 0), title: Text('')),
      Step(content: showQuestion(questions, 1), title: Text('')),
    ];
  }

  Center showQuestion(data, index) {
    return Center(
          child:
          Container(
              height: 350,
              padding: EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4.0, // soften the shadow
                    spreadRadius: 0, //extend the shadow
                    offset: Offset(
                      1.0, // horizontal, move right 10
                      4.0, // vertical, move down 10
                    ),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(data[index]['question']),
                  Wrap(
                    spacing: 8.0, // horizontal space between chips
                    runSpacing: 4.0, // vertical space between lines of chips
                    children: [
                      'Ya',
                      'Tidak',
                    ].map((option) {
                      return SizedBox(
                          width: double.infinity,
                          child: ChoiceChip(
                            label: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  option,
                                  textAlign: TextAlign.center,
                                )),
                            selected: option == _value,
                            onSelected: (bool selected) {
                              setState(() {
                                _value[index] = option;
                                print(_value);
                              });
                            },
                            showCheckmark: false,
                          ));
                    }).toList(),
                  )
                ],
              )),
      );
  }
}
