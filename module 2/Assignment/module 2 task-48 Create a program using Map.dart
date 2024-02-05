void main()
{

  Map<String,int> markslist =
  {
    'Dhvani':60,
    'Meet':75,
    'Mitesh':90,
    'Palak':95,
  };
  
  print('Dhvani marks is ${markslist['Dhvani']}');
  print('Meet marks is ${markslist['Meet']}');
  print('Mitesh marks is ${markslist['Mitesh']}');
  print('Palak marks is ${markslist['Palak']}');

  markslist['Parth'] = 99;
  print('Parth marks is ${markslist['Parth']}');

  markslist.remove("Dhvani");

  print(markslist);
}