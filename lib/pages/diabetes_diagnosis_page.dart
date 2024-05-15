import 'package:afyaaidemo/customs/customs.dart';
import 'package:afyaaidemo/services/services.dart';
import 'package:flutter/material.dart';

class DiabetesDiagnosis extends StatefulWidget {
  const DiabetesDiagnosis({super.key});

  @override
  State<DiabetesDiagnosis> createState() => _DiabetesDiagnosis();
}

class _DiabetesDiagnosis extends State<DiabetesDiagnosis> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController bmiController = TextEditingController();
  final TextEditingController ureaController = TextEditingController();
  final TextEditingController creatinineController = TextEditingController();
  final TextEditingController haemoglobinController = TextEditingController();
  final TextEditingController hdlController = TextEditingController();
  final TextEditingController choleController = TextEditingController();
  final TextEditingController ldlController = TextEditingController();
  final TextEditingController vldlController = TextEditingController();
  final TextEditingController trigController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var success = 0;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CustomText(
                    label: "Diabetes Diagnosis",
                    textcolor: Colors.black,
                    isBold: true,
                    size: 32,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 8,
                    right: 8,
                    bottom: 8,
                    top: 0,
                  ),
                  child: CustomText(
                    label: "Fill in Details To Get Diagnosis",
                    textcolor: Colors.grey,
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: CustomTextFormField(
                        textController: ageController,
                        textLabel: "Age",
                        validator: (value) {
                          final RegExp emailRegex = RegExp(r'^\d+$');
                          if (value != null && value.isEmpty) {
                            return "Cannot be Empty";
                          } else if (!emailRegex.hasMatch(value!)) {
                            return "Only Digits Are Accepted";
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.48,
                      child: CustomTextFormField(
                        textController: bmiController,
                        textLabel: "BMI",
                        validator: (value) {
                          final RegExp emailRegex = RegExp(r'^\d+$');
                          if (value != null && value.isEmpty) {
                            return "Cannot be Empty";
                          } else if (!emailRegex.hasMatch(value!)) {
                            return "Only Digits Are Accepted";
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: CustomTextFormField(
                        textController: ureaController,
                        textLabel: "Urea",
                        validator: (value) {
                          final RegExp emailRegex = RegExp(r'^\d+$');
                          if (value != null && value.isEmpty) {
                            return "Cannot be Empty";
                          } else if (!emailRegex.hasMatch(value!)) {
                            return "Only Digits Are Accepted";
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.48,
                      child: CustomTextFormField(
                        textController: creatinineController,
                        textLabel: "creatinine",
                        validator: (value) {
                          final RegExp emailRegex = RegExp(r'^\d+$');
                          if (value != null && value.isEmpty) {
                            return "Cannot be Empty";
                          } else if (!emailRegex.hasMatch(value!)) {
                            return "Only Digits Are Accepted";
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: CustomTextFormField(
                        textController: haemoglobinController,
                        textLabel: "Haemoglobin",
                        validator: (value) {
                          final RegExp emailRegex = RegExp(r'^\d+$');
                          if (value != null && value.isEmpty) {
                            return "Cannot be Empty";
                          } else if (!emailRegex.hasMatch(value!)) {
                            return "Only Digits Are Accepted";
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.48,
                      child: CustomTextFormField(
                        textController: hdlController,
                        textLabel: "hdl",
                        validator: (value) {
                          final RegExp emailRegex = RegExp(r'^\d+$');
                          if (value != null && value.isEmpty) {
                            return "Cannot be Empty";
                          } else if (!emailRegex.hasMatch(value!)) {
                            return "Only Digits Are Accepted";
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: CustomTextFormField(
                        textController: ldlController,
                        textLabel: "ldl",
                        validator: (value) {
                          final RegExp emailRegex = RegExp(r'^\d+$');
                          if (value != null && value.isEmpty) {
                            return "Cannot be Empty";
                          } else if (!emailRegex.hasMatch(value!)) {
                            return "Only Digits Are Accepted";
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.48,
                      child: CustomTextFormField(
                        textController: vldlController,
                        textLabel: "vldl",
                        validator: (value) {
                          final RegExp emailRegex = RegExp(r'^\d+$');
                          if (value != null && value.isEmpty) {
                            return "Cannot be Empty";
                          } else if (!emailRegex.hasMatch(value!)) {
                            return "Only Digits Are Accepted";
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: CustomTextFormField(
                        textController: genderController,
                        textLabel: "Gender",
                        validator: (value) => value != null && value.isEmpty
                            ? "Cannot be Empty"
                            : null,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.48,
                      child: CustomTextFormField(
                        textController: trigController,
                        textLabel: "triglycerides",
                        validator: (value) {
                          final RegExp emailRegex = RegExp(r'^\d+$');
                          if (value != null && value.isEmpty) {
                            return "Cannot be Empty";
                          } else if (!emailRegex.hasMatch(value!)) {
                            return "Only Digits Are Accepted";
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                  ],
                ),
                CustomTextFormField(
                  textController: choleController,
                  textLabel: "Cholesterol",
                  validator: (value) {
                    final RegExp emailRegex = RegExp(r'^\d+$');
                    if (value != null && value.isEmpty) {
                      return "Cannot be Empty";
                    } else if (!emailRegex.hasMatch(value!)) {
                      return "Only Digits Are Accepted";
                    } else {
                      return null;
                    }
                  },
                ),
                // TODO add gender drop down here
                CustomElevatedButton(
                  buttonLabel: "GET DIAGNOSIS",
                  // send request for the diagnosis here
                  action: () async {
                    if (_formKey.currentState!.validate()) {
                      // register user
                      var response = await diabetesDiagnos(
                        genderController.value.toString().toLowerCase() ==
                                "male"
                            ? 1
                            : 0,
                        double.parse(ageController.text),
                        int.parse(bmiController.text),
                        int.parse(ureaController.text),
                        int.parse(creatinineController.text),
                        int.parse(haemoglobinController.text),
                        int.parse(choleController.value.text),
                        int.parse(trigController.value.text),
                        int.parse(hdlController.value.text),
                        int.parse(ldlController.value.text),
                        int.parse(vldlController.value.text),
                      );
                      print(response);
                      if (response[1] == 200) {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return Center(
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 16,
                                    ), // Adding space between image and summary
                                    // Displaying the summary
                                    Text(
                                      'prediction: ${response[0]['prediction']}',
                                      style: TextStyle(fontSize: 16),
                                      textAlign: TextAlign.left,
                                    ),
                                    Text(
                                      'nodiabetesproba: ${response[0]['nodiabetesproba']}',
                                      style: TextStyle(fontSize: 16),
                                      textAlign: TextAlign.left,
                                    ),
                                    Text(
                                      'statement: ${response[0]['statement']}',
                                      style: TextStyle(fontSize: 16),
                                      textAlign: TextAlign.left,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      }
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
