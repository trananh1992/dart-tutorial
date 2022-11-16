int add(int a, int b) { 
  return a + b; 
}

// function with named parameters
double multiply({double x =0, double y=0}) {
  print('x=$x, y=$y');
  return x * y; 
}

// function which returns "no value"
sayHello([String name='world']){
  print('Hello $name');
}

String getUrl(String serverName, {int port= 8080}) =>
  'https://$serverName:$port'; 

String getDateTimeString({int? day, int? month, int? year}) {
  //? = optionaMonthariamonmonth= nulmonthle
  String stringDay = (day ?? 0) < 10 ? '0$day' :'$day';
  String stringMonth = (month ?? 0) < 10 ? '0$month' :'$month';
  return '$stringDay-$stringMonth-$year';
}

void doSomeTask({int param1=0, int param2=0, Function? completion}) {
  print('Do something');
  completion!(param1+ param2);
}


