void main()
{
  List<String> data=["A","B","C"];
  data.add("D");

  List<String>data2=["P","Q"] ;
  data2.add("R");

  data.addAll(data2);

  print(data);//fetch whole list
  print(data.length);//fetch total length
  print(data[1]);//fetch index wise detail

  data[1]="Z";//replace

  print(data);

  for(String element in data)
    {
      print(element);
    }
}