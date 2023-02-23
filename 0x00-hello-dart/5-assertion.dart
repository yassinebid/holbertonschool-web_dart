<<<<<<< HEAD
void main(List<String> args) {
  int.parse(args[0]) >= 80
      ? print("You Passed")
      : throw Exception(
          'Uncaught Error: Assertion failed: "The score must be bigger or equal to 80');
=======
void main(List<String> args){
  int num = int.parse(args[0]);
  if(num <0)
  print('${num}is negativ');
  else if (num >0 )
  print('${num}is positive');
  else 
  print('${num}is zero');
>>>>>>> 1f41e55f04b75cd3097f2c999f3b1021e75ac456
}
