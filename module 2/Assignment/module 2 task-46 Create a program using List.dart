// 46. Create a program using List

void main()
{
  List<String> data=["Vivo","Oneplus","Poco"];
  data.add("Samsung");

  print("data element : $data");

  List<String>data2=["H.P.","Dell"] ;
  data2.add("Lenovo");

  print("data2 element : $data2");

  data.addAll(data2);

  data.add("oppo");// add in list

  print("add  element : $data");// add and then print list

  data.remove("oppo");// remove element in list

  print("remove element : $data");// print list



}