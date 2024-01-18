class Tops
{
  Tops({var id,var name,var surname})
  {
    print("Your id is $id");
    print("Your name is $name");
    print("Your surname is $surname");
  }
}

void main()
{
  var t1 = Tops(id: 101, name: "aaa", surname: "a");
  var t2 = Tops(name: "bbb", surname: "b", id: 102);
  var t3 = Tops(surname: "c",name: "ccc",id: 103);
  var t4 = Tops(id: 104 , surname: "d", name: "ddd");
}