import 'dart:io';
import 'dart:math';

int getInt(String prompt){
  print(prompt);
  return int.parse(stdin.readLineSync());
}

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
List<int> getIntList(String prompt){
  print(prompt);
  List<int> myNumbers = [];
  while(!getYesNo('Stop?')) {
    myNumbers.add(getInt('Enter next number'));
  }

  return myNumbers;

}
void main() {
  List<int> listNumbers = getIntList('Give me some numbers! ');
  //print('After running your function I a list: $listNumbers');
  int smallest = listNumbers.fold(listNumbers[0], min);
  int largest = listNumbers.fold(listNumbers[0], max);
  print(smallest);
  print(largest);
}