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
  while(!getYesNo('Do you want to stop? Enter "no" to continue OR press enter to stop')) {
    myNumbers.add(getInt('Enter next number'));
  }
  return myNumbers;
}

void main() {
  List<int> listNumbers = getIntList('Give me some numbers! ');
  print(listNumbers);
  int smallest = listNumbers.fold(listNumbers[0], min); //to get the smallest
  int largest = listNumbers.fold(listNumbers[0], max);// to get the largest
  print(smallest);
  print(largest);
}
/* TEST:
Give me some numbers!
Do you want to stop? Enter "no" to continue OR press enter to stop
no
Enter next number
1
Do you want to stop? Enter "no" to continue OR press enter to stop
no
Enter next number
-1
Do you want to stop? Enter "no" to continue OR press enter to stop
no
Enter next number
9
Do you want to stop? Enter "no" to continue OR press enter to stop

-1
9
 */
