Future delayprint(int sec, String message)
{
  final duration  = Duration(seconds: sec);
  return Future.delayed(duration).then((value) => message);
}

void main()async
{
  print("Money");
  await delayprint(2, "Money");
  print("Is");
  await delayprint(3, "Is");
  print("Everything");
  await delayprint(4, "Everyhting");
}