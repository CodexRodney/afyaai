import 'package:afyaaidemo/customs/customs.dart';
import 'package:afyaaidemo/services/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DiabetesDiagnosis extends StatefulWidget {
  DiabetesDiagnosis({super.key});
  int waiting = 3;
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
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Form(
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
                        width: MediaQuery.of(context).size.width * 0.40,
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
                        width: MediaQuery.of(context).size.width * 0.40,
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
                        width: MediaQuery.of(context).size.width * 0.40,
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
                        width: MediaQuery.of(context).size.width * 0.40,
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
                        width: MediaQuery.of(context).size.width * 0.40,
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
                        width: MediaQuery.of(context).size.width * 0.40,
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
                        width: MediaQuery.of(context).size.width * 0.40,
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
                        width: MediaQuery.of(context).size.width * 0.40,
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
                        width: MediaQuery.of(context).size.width * 0.40,
                        child: CustomTextFormField(
                          textController: genderController,
                          textLabel: "Gender",
                          validator: (value) => value != null && value.isEmpty
                              ? "Cannot be Empty"
                              : null,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.40,
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
                        setState(() {
                          print("I am here");
                          widget.waiting = 0;
                        });
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
                        setState(() {
                          print("Not Loading");
                          widget.waiting = 1;
                        });
                        // resposnse is back
                        if (response[1] == 200) {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.35,
                                    width:
                                        MediaQuery.of(context).size.width * 0.2,
                                    child: Card(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Center(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: SizedBox(
                                                height: 150,
                                                child: Image.asset(
                                                  "assets/images/result_diag.png",
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'Prediction: ${response[0]['prediction']}',
                                              style:
                                                  const TextStyle(fontSize: 16),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'Nodiabetesproba: ${response[0]['nodiabetesproba']}',
                                              style:
                                                  const TextStyle(fontSize: 16),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'Statement: ${response[0]['statement']}',
                                              style:
                                                  const TextStyle(fontSize: 16),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
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
            widget.waiting == 0
                ? const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircularProgressIndicator(
                      color: Colors.black,
                    ),
                  )
                : const SizedBox()
          ],
        ),
      ),
    );
  }
}
