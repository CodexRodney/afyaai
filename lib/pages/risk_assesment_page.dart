import 'package:afyaaidemo/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../customs/customs.dart';

class RiskAssesmentPage extends StatelessWidget {
  const RiskAssesmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController genderController = TextEditingController();
    final TextEditingController ageController = TextEditingController();
    final TextEditingController bmiController = TextEditingController();
    final TextEditingController cigeEnrLifController = TextEditingController();
    final TextEditingController phyActController = TextEditingController();
    final TextEditingController fruitConsController = TextEditingController();
    final TextEditingController heavDrinkerController = TextEditingController();
    final TextEditingController bldColestrolController =
        TextEditingController();
    final TextEditingController highBldController = TextEditingController();
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
            child: CustomText(
              label: "how old are you?",
              isBold: true,
              textcolor: Colors.black,
            ),
          ),
          CustomTextField(
            textController: ageController,
            textLabel: "",
            suffixIcon: Icons.edit_outlined,
            float: false,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
            child: CustomText(
              label: "What Is Your Gender",
              isBold: true,
              textcolor: Colors.black,
            ),
          ),
          CustomTextField(
            textController: genderController,
            textLabel: "",
            suffixIcon: Icons.edit_outlined,
            float: false,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
            child: CustomText(
              label: "BMI",
              isBold: true,
              textcolor: Colors.black,
            ),
          ),
          CustomTextField(
            textController: bmiController,
            textLabel: "",
            suffixIcon: Icons.edit_outlined,
            float: false,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
            child: CustomText(
              label:
                  "Have you smoked at least 100 cigarettes in your entire life? [Note: 5 packs = 100 cigarettes",
              isBold: true,
              textcolor: Colors.black,
            ),
          ),
          CustomTextField(
            textController: cigeEnrLifController,
            textLabel: "",
            suffixIcon: Icons.edit_outlined,
            float: false,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
            child: CustomText(
              label:
                  "Ever had Physical activity in past 30 days - not including job",
              isBold: true,
              textcolor: Colors.black,
            ),
          ),
          CustomTextField(
            textController: phyActController,
            textLabel: "",
            suffixIcon: Icons.edit_outlined,
            float: false,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
            child: CustomText(
              label: "Do you Consume Fruit once or more times per day?",
              isBold: true,
              textcolor: Colors.black,
            ),
          ),
          CustomTextField(
            textController: fruitConsController,
            textLabel: "",
            suffixIcon: Icons.edit_outlined,
            float: false,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
            child: CustomText(
              label:
                  "Are you a heavy drinker (adult men having more than 14 drinks per week and adult women having more than 7 drinks per week)",
              isBold: true,
              textcolor: Colors.black,
            ),
          ),
          CustomTextField(
            textController: heavDrinkerController,
            textLabel: "",
            suffixIcon: Icons.edit_outlined,
            float: false,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
            child: CustomText(
              label:
                  "Ever been told by a doctor, nurse or other health professional that your blood cholesterol is high",
              isBold: true,
              textcolor: Colors.black,
            ),
          ),
          CustomTextField(
            textController: bldColestrolController,
            textLabel: "",
            suffixIcon: Icons.edit_outlined,
            float: false,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
            child: CustomText(
              label:
                  "Ever been told you have high blood pressure by a doctor, nurse, or other health professional",
              isBold: true,
              textcolor: Colors.black,
            ),
          ),
          CustomTextField(
            textController: highBldController,
            textLabel: "",
            suffixIcon: Icons.edit_outlined,
            float: false,
          ),
          CustomElevatedButton(
            buttonLabel: "GET ASSESSMENT",
            // send request for the diagnosis here
            action: () async {
              // register user
              var response = await diabetesRiskReq(
                int.parse(ageController.text),
                genderController.value.toString().toLowerCase() == "male"
                    ? 1
                    : 0,
                int.parse(bmiController.text),
                cigeEnrLifController.value.toString().toLowerCase() == "yes"
                    ? 1
                    : 0,
                phyActController.value.toString().toLowerCase() == "yes"
                    ? 1
                    : 0,
                fruitConsController.value.toString().toLowerCase() == "yes"
                    ? 1
                    : 0,
                heavDrinkerController.value.toString().toLowerCase() == "yes"
                    ? 1
                    : 0,
                bldColestrolController.value.toString().toLowerCase() == "yes"
                    ? 1
                    : 0,
                highBldController.value.toString().toLowerCase() == "yes"
                    ? 1
                    : 0,
              );
              print(response);
            },
          )
        ],
      ),
    );
  }
}
