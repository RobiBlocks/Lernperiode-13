void main() {
  String LastName = "Müller"; // can be changed
  final FirstName = "Robin"; // cannot be changed

  print(greet(lastName: LastName, firstName: FirstName));
  print(greet(firstName: FirstName));

  List<int> listOfNumbers = [1, 1, 3, 3, 5];
  print(listOfNumbers);

  Set<int> setOfNumbers = {1, 1, 3, 3, 5};
  print(setOfNumbers);

  for (int i = 0; i < 5; i++) {
    print("Iteration number: $i");
  }

  List<int> scores = [2, 4, 6, 8, 10];

  for (int score in scores.where((s) => s > 5)) {
    print("Number from list: $score");
  }
}

greet({String? lastName, required String firstName}) {
  return "Hello, $firstName $lastName!";
}
