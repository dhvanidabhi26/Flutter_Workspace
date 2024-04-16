void main()
{
 List<String>data=["Apple","Orange"];
 data.add("Mango");//add data

  print("data element: $data");

  List<String>data2=["Tea","Coffee"];
  data2.add("Mango Shake");

  print('data element: $data2');

  data.addAll(data2); //data2 all data add on data

  print("add element: $data");
  data.remove("Mango");

  print("remove element: $data");
}