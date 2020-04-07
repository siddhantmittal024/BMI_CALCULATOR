import 'dart:math';

class CalculatorBrain{
  CalculatorBrain({this.height,this.weight});
  final int height;
  final int weight;
  double _bmi;

  String calculateBMI()
  {
     _bmi = weight / pow(height/100,2);
    return  _bmi.toStringAsFixed(1);
  }
  String getResult(){
    if(_bmi>=25)
      {
        return 'OVERWEIGHT';
      }
    else if(_bmi>18.5)
      {
        return 'NORMAL';
      }
    else
      {
        return 'UNDERWEIGHT';
      }
  }
  String getInterpretation(){
    if(_bmi>=25)
      return ('Your body weight is higher than normal..Exercise More!');
    else if(_bmi>18.5)
      return ('Your body weight is normal..Good Job!');
    else
      return ('Your body weight is lower than normal..Eat More!');
  }

}