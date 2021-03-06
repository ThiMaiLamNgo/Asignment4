/*
prints out only the numbers that are larger or equal to 20, and smaller or equal to 80.
 Finally print out how many numbers met the condition.
 */
void main(List<String> arguments) {
  List<int> calculate_sum = [13,56,77,3,45,6,944,1,43,7,40,55,67,93,45,754,33];
  List<int> countNumbers = [];
  int count = 0;
  for (int i in calculate_sum){
    if (i >= 20 && i <= 80){
      countNumbers.add(i);
      count += 1;
    }
  }
  print(countNumbers);
  print("The numbers that are larger or equal to 20, and smaller or equal to 80 are: $countNumbers");
  print("There are $count numbers met the condition");
}
/*
The numbers that are larger or equal to 20, and smaller or equal to 80 are: [56, 77, 45, 43, 40, 55, 67, 45, 33]
There are 9 numbers met the condition
 */