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
    myString.add(getString('Enter next string'));
  }
  return myString;
}

void main() {
  List<String> listString = getStringList('Give me a string! ');
  List<String> listReversed =  (listString.reversed).toList();
  print("The original list: $listString");
  print('The reversed list: $listReversed');
}

/*
Give me a string!
Do you want to stop? Enter "no" to continue OR press enter to stop
no
Enter next string
uno
Do you want to stop? Enter "no" to continue OR press enter to stop
no
Enter next string
win
Do you want to stop? Enter "no" to continue OR press enter to stop
no
Enter next string
I
Do you want to stop? Enter "no" to continue OR press enter to stop

The original list: [uno, win, I]
The reversed list: [I, win, uno]
 */