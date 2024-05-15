import 'dart:convert';
import 'package:http/http.dart' as http;

const Map<String, String> headers = {
  'Content-type': 'application/json; charset=UTF-8',
};

// used for diabetes risk assesment
Future diabetesRiskReq(
  int age,
  int gender,
  int bmi,
  int cigSmoked,
  int phyActi,
  int fruitCons,
  int heavDrink,
  int bloodChole,
  int highBloodPress,
) async {
  String registerUrl = "http://20.107.182.143:1297/models/diabetesrisk/";
  // sending post request to server
  var response = await http.post(
    Uri.parse(registerUrl),
    headers: headers,
    body: jsonEncode(
      [
        <String, dynamic>{'question': 'how old are you', 'answer': age},
        <String, dynamic>{'question': 'what is your gender', 'answer': gender},
        <String, dynamic>{'question': 'BMI', 'answer': bmi},
        <String, dynamic>{
          'question':
              'Have you smoked at least 100 cigarettes in your entire life? [Note: 5 packs = 100 cigarettes]',
          'answer': cigSmoked,
        },
        <String, dynamic>{
          'question':
              'Ever had Physical activity in past 30 days - not including job',
          'answer': phyActi
        },
        <String, dynamic>{
          'question': 'Do you Consume Fruit once or more times per day?',
          'answer': fruitCons,
        },
        <String, dynamic>{
          'question':
              'Are you a heavy drinker (adult men having more than 14 drinks per week and adult women having more than 7 drinks per week)',
          'answer': heavDrink,
        },
        <String, dynamic>{
          'question':
              'Ever been told by a doctor, nurse or other health professional that your blood cholesterol is high',
          'answer': bloodChole,
        },
        <String, dynamic>{
          'question':
              'Ever been told you have high blood pressure by a doctor, nurse, or other health professional',
          'answer': highBloodPress,
        },
      ],
    ),
  );
  var decodedResponse = jsonDecode(response.body);
  return [decodedResponse, response.statusCode];
}

// used for Image Processing
Future imageProcessReq(var profilePic) async {
  String registerUrl = "http://20.107.182.143:1295/models/headanomalypredict/";
  // sending post request to server
  var response = await http.post(
    Uri.parse(registerUrl),
    headers: headers,
    body: jsonEncode(
      <String, dynamic>{
        'images': profilePic != null ? base64Encode(profilePic) : null
      },
    ),
  );
  var decodedResponse = jsonDecode(response.body);
  return [decodedResponse, response.statusCode];
}

// used for diabetes diagnose
Future diabetesDiagnos(
  int gender,
  double age,
  int bmi,
  int urea,
  int creatinine,
  int haemoglobin,
  int cholesterol,
  int triglycerides,
  int hdl,
  int ldl,
  int vldl,
) async {
  String registerUrl = "http://20.107.182.143:1296/models/diabetesdiagnosis/";
  // sending post request to server
  var response = await http.post(
    Uri.parse(registerUrl),
    headers: headers,
    body: jsonEncode(
      <String, dynamic>{
        'gender': gender,
        'age': age,
        'bmi': bmi,
        'urea': urea,
        "creatinine": creatinine,
        "haemoglobin": haemoglobin,
        "cholesterol": cholesterol,
        "triglycerides": triglycerides,
        "hdl": hdl,
        "ldl": ldl,
        "vldl": vldl
      },
    ),
  );
  var decodedResponse = jsonDecode(response.body);
  return [decodedResponse, response.statusCode];
}
