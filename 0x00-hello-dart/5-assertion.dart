void main(List<String> args){
  int num = int.parse(args[0]);
  if(num <0)
  print('${num}is negativ');
  else if (num >0 )
  print('${num}is positive');
  else 
  print('${num}is zero');
}
