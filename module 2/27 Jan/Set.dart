void main()
{
  Set<dynamic>  set = Set();
  set.add("A");
  set.add("B");
  set.add("C");
  set.add("A");

  Set<int> set2 = Set();
  set2.add(1);
  set2.add(3);
  set2.add(2);

  set.addAll(set2);
  
  Set<String> set3 = Set();
  set3.add("Hindi");
  set3.add("English");
  set3.add("Gujarati");
  
  set.addAll(set3);

  print(set);
}