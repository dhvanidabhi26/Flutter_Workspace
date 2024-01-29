void main()
{

  Map<String,String> details = Map();
   details["apple"]= "red";
   details["orange"]="orange";
   details["banana"]="yellow";

   print(details);
   print(details.keys);
   print(details.length);
   print(details.entries);
   print(details.hashCode);
   print(details.values);
   print(details.isNotEmpty);

   details.remove("orange");
   print(details);
}