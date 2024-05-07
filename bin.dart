import 'dart:io';

void main() {
  //display Bmi chart
  BMIChart();
  print("---------------");
  print("BMI Calculator");
  print("---------------");
  print("Please Enter Your Weight:"); //In Kilograms
  double weight = double.parse(stdin.readLineSync()!);
  print("Please Enter Your Height:"); // In Meter
  double height = double.parse(stdin.readLineSync()!);
  // Calculate BMI
  double bmi = calculateweig(weight, height);
  calculator(bmi);
  // Print the result
  print("Your BMI Is: $bmi");
}

double calculateweig(double weight, double height) {
  return weight / (height * height);
}

dynamic calculator(double bmi) {
  if (bmi < 18.5) {
    print("You Are Underweight");
    print(
        '''  RECOMMENDATION \n-Ensure you're eating enough nutritious food to meet your calorie needs. 
-Include protein-rich foods like lean meats, eggs, dairy, legumes, and nuts in your diet. 
-Incorporate healthy fats from sources like avocados, nuts, seeds, and olive oil. 
-Consider consulting a healthcare professional to rule out any underlying health issues''');
  } else if (bmi >= 18.5 && bmi < 25) {
    print("Your Weight Is Ideal");
    print(
        ''' RECOMMENDATION \n -Maintain a balanced diet with a variety of fruits, vegetables, whole grains, lean proteins, and healthy fats. 
-Engage in regular physical activity to maintain overall health and fitness. 
-Aim for at least 150 minutes of moderate-intensity aerobic activity or 75 minutes of vigorous-intensity activity.per week, along with muscle-strengthening activities on two or more days per week.''');
  } else if (bmi >= 25 && bmi < 30) {
    print("You Are OverWeight");
    print(
        ''' RECOMMENDATION \n -Focus on gradual weight loss by making small, sustainable changes to your diet and lifestyle. 
-Increase your intake of fruits, vegetables, and whole grains while reducing processed foods, sugary beverages, and high-fat foods. 
-Aim to achieve a modest weight loss of 1-2 pounds per week through a combination of dietary changes and increased physical activity. ''');
  } else {
    print("You Are Obese.");
    print(
        '''RECOMMENDATION \n -Seek guidance from a healthcare professional or registered dietitian for personalized weight loss recommendations. 
-Consider a comprehensive approach to weight management, including dietary modifications, increased physical activity, behavior change strategies, and possibly medical intervention in severe cases. 
-Set realistic goals and focus on making sustainable lifestyle changes rather than pursuing quick-fix solutions.''');
  }
}

dynamic BMIChart() {
  print("BMI Chart");
  print("-------------");
  print("Underweight: less than 18.5");
  print("Normal Weight: 18.5 to 24.9");
  print("Overweight: 25 to 29.9");
  print("Obesity: 30 or Greater");
}
