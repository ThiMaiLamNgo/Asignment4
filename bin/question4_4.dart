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
  while(!getYesNo('Do you want to stop?')) {
    myString.add(getString('Enter next character'));
  }

  return myString;

}
void main() {
  List<String> listString = getStringList('Give me some characters! ');
  //print('After running your function I a list: $listNumbers');
  print(largest);
}