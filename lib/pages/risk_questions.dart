import 'package:afyaaidemo/customs/customs.dart';
import 'package:afyaaidemo/services/services.dart';
import 'package:flutter/material.dart';

class RiskQuestionsPage extends StatefulWidget {
  const RiskQuestionsPage({super.key});

  @override
  State<RiskQuestionsPage> createState() => _RiskQuestionsPageState();
}

class _RiskQuestionsPageState extends State<RiskQuestionsPage> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController ageController = TextEditingController();
    final TextEditingController bmiController = TextEditingController();
    int? genderValue = 1;
    int? cigValue = 1;
    int? phyAct = 1;
    int? heavDrink = 1;
    int? bldChole = 1;
    int? fruitValue = 1;
    int? highBld = 1;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: CustomText(
              label: "RISK ASSESSMENT",
              isBold: true,
              size: 36,
            ),
          ),
          StatefulBuilder(
            builder: (context, setState) => Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.46,
                  decoration: const BoxDecoration(
                    shape: BoxShape.rectangle,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Divider(
                          color: Colors.black,
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                        child: CustomText(
                          label: "how old are you?",
                          isBold: true,
                        ),
                      ),
                      CustomTextField(
                        textController: ageController,
                        textLabel: "",
                        suffixIcon: Icons.edit_outlined,
                        float: false,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Divider(
                          color: Colors.black,
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                        child: CustomText(
                          label: "What Is Your Gender",
                          isBold: true,
                        ),
                      ),
                      Row(
                        children: [
                          Radio(
                              value: 1,
                              groupValue: genderValue,
                              onChanged: (value) {
                                setState(() {
                                  genderValue = value;
                                });
                              }),
                          const CustomText(
                            label: "Male",
                          ),
                          Radio(
                              value: 0,
                              groupValue: genderValue,
                              onChanged: (value) {
                                setState(() {
                                  genderValue = value;
                                });
                              }),
                          const CustomText(
                            label: "FeMale",
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Divider(
                          color: Colors.black,
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                        child: CustomText(
                          label:
                              "Have you smoked at least 100 cigarettes in your entire life? [Note: 5 packs = 100 cigarettes",
                          isBold: true,
                          isSoftWrap: true,
                        ),
                      ),
                      Row(
                        children: [
                          Radio(
                              value: 1,
                              groupValue: cigValue,
                              onChanged: (value) {
                                setState(() {
                                  cigValue = value;
                                });
                              }),
                          const CustomText(
                            label: "Yes",
                          ),
                          Radio(
                              value: 0,
                              groupValue: cigValue,
                              onChanged: (value) {
                                setState(() {
                                  cigValue = value;
                                });
                              }),
                          const CustomText(
                            label: "No",
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Divider(
                          color: Color(0xFF0f305e),
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                        child: CustomText(
                          label:
                              "Do you Consume Fruit once or more times per day?",
                          isBold: true,
                          isSoftWrap: true,
                        ),
                      ),
                      Row(
                        children: [
                          Radio(
                              value: 1,
                              groupValue: fruitValue,
                              onChanged: (value) {
                                setState(() {
                                  fruitValue = value;
                                });
                              }),
                          const CustomText(
                            label: "Yes",
                          ),
                          Radio(
                              value: 0,
                              groupValue: fruitValue,
                              onChanged: (value) {
                                setState(() {
                                  fruitValue = value;
                                });
                              }),
                          const CustomText(
                            label: "No",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.46,
                  decoration: const BoxDecoration(
                    shape: BoxShape.rectangle,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Divider(
                          color: Color(0xFF0f305e),
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                        child: CustomText(
                          label: "BMI",
                          isBold: true,
                        ),
                      ),
                      CustomTextField(
                        textController: bmiController,
                        textLabel: "",
                        suffixIcon: Icons.edit_outlined,
                        float: false,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Divider(
                          color: Color(0xFF0f305e),
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                        child: CustomText(
                          label:
                              "Ever had Physical activity in past 30 days - not including job",
                          isBold: true,
                        ),
                      ),
                      Row(
                        children: [
                          Radio(
                              value: 1,
                              groupValue: phyAct,
                              onChanged: (value) {
                                setState(() {
                                  phyAct = value;
                                });
                              }),
                          const CustomText(
                            label: "Yes",
                          ),
                          Radio(
                              value: 0,
                              groupValue: phyAct,
                              onChanged: (value) {
                                setState(() {
                                  phyAct = value;
                                });
                              }),
                          const CustomText(
                            label: "No",
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Divider(
                          color: Colors.black,
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                        child: CustomText(
                          label:
                              "Are you a heavy drinker (adult men having more than 14 drinks per week and adult women having more than 7 drinks per week)",
                          isBold: true,
                          isSoftWrap: true,
                        ),
                      ),
                      Row(
                        children: [
                          Radio(
                              value: 1,
                              groupValue: heavDrink,
                              onChanged: (value) {
                                setState(() {
                                  heavDrink = value;
                                });
                              }),
                          const CustomText(
                            label: "Yes",
                          ),
                          Radio(
                              value: 0,
                              groupValue: heavDrink,
                              onChanged: (value) {
                                setState(() {
                                  heavDrink = value;
                                });
                              }),
                          const CustomText(
                            label: "No",
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Divider(
                          color: Color(0xFF0f305e),
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                        child: CustomText(
                          label:
                              "Ever been told by a doctor, nurse or other health professional that your blood cholesterol is high",
                          isBold: true,
                        ),
                      ),
                      Row(
                        children: [
                          Radio(
                              value: 1,
                              groupValue: bldChole,
                              onChanged: (value) {
                                setState(() {
                                  bldChole = value;
                                });
                              }),
                          const CustomText(
                            label: "Yes",
                          ),
                          Radio(
                              value: 0,
                              groupValue: bldChole,
                              onChanged: (value) {
                                setState(() {
                                  bldChole = value;
                                });
                              }),
                          const CustomText(
                            label: "No",
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Divider(
                          color: Color(0xFF0f305e),
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                        child: CustomText(
                          label:
                              "Ever been told you have high blood pressure by a doctor, nurse, or other health professional",
                          isBold: true,
                        ),
                      ),
                      Row(
                        children: [
                          Radio(
                              value: 1,
                              groupValue: highBld,
                              onChanged: (value) {
                                setState(() {
                                  highBld = value;
                                });
                              }),
                          const CustomText(
                            label: "Yes",
                          ),
                          Radio(
                              value: 0,
                              groupValue: highBld,
                              onChanged: (value) {
                                setState(() {
                                  highBld = value;
                                });
                              }),
                          const CustomText(
                            label: "No",
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          CustomElevatedButton(
            buttonLabel: "GET DIAGNOSIS",
            // send request for the diagnosis here
            action: () async {
              // register user
              var response = await diabetesRiskReq(
                int.parse(ageController.text),
                genderValue!,
                int.parse(bmiController.text),
                cigValue!,
                phyAct!,
                fruitValue!,
                heavDrink!,
                bldChole!,
                highBld!,
              );
              print(response);
              print(
                  "$cigValue $phyAct $fruitValue $heavDrink $bldChole $highBld");
            },
          )
        ],
      ),
    );
  }
}
