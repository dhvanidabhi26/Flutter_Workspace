void main()
{
  Set<dynamic> no = Set();
  no.add(4);
  no.add(6);
  no.add(8);
  no.add(1);

  print(no);

  Set<dynamic> no2 = Set();
  no2.add(2);
  no2.add(5);
  no2.add(7);

  print(no2);

  no.addAll(no2);

  no.remove(6);

  print(no);

  print(no.isNotEmpty);


}