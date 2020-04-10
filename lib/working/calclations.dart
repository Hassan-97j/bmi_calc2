import 'dart:math';

class Calc{

double height;
int weight;

double _bmi;

Calc({this.height,this.weight});


String calcBMI(){
 _bmi = weight/pow((height*0.3048),2);
  
  return _bmi.toStringAsFixed(1);
}

String getResult(){
  if (_bmi>= 25){
    return 'Overweight';

  }else if (_bmi >18){
    return 'normal';
  }else {
    return 'UnderWeight';
  }
}

String getComments(){
  if (_bmi>= 25){
    return 'Exercise more';

  }else if (_bmi >18){
    return 'Great you are a healty person';
  }else {
    return 'hey skinny, eat more';
  }
}

}