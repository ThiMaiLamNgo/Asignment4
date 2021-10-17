import 'dart:io';

String getString(String prompt){
  print(prompt);
  return stdin.readLineSync();
}

bool  getYesNo(String prompt){
  bool ans;
  while (ans == null ){
    String userAns = getString(prompt);
    if (userAns.toLowerCase() == ''){
      ans = true;
    } else if (userAns.toLowerCase() == 'no'){
      ans = false;
    }
    return ans;
  }
}
List<String> getStringList(String prompt){
  print(prompt);
  List<String> myString = [];
  while(!getYesNo('Do you want to stop? Enter "no" to continue OR press enter to stop')) {
    myString.add(getString('Enter next characters'));
  }
  return myString;

}
void main() {
  List<String> listString = getStringList('Give me some characters! ');
  List<String> listReversed =  (listString.reversed).toList();
  print(listString);
  print(listReversed);
}