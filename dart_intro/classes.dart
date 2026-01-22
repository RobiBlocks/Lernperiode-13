void main() {
  var sword1 = Sword("Excalibur", "Arthur");
  var sword2 = Sword("Kusanagi", "Yamato Takeru");
  var lightsaber1 = Lightsaber(
    "Anakin's Lightsaber",
    "Anakin Skywalker",
    "Blue",
  );
  var lightsaber2 = Lightsaber("Luke's Lightsaber", "Luke Skywalker", "Green");

  print("\n--- Names ---");
  print(sword1);
  print(sword2);
  print(lightsaber1);
  print(lightsaber2);

  print("\n--- Colors ---");
  print(lightsaber1.color);
  print(lightsaber2.color);

  lightsaber1.changeColor("Red");
  print(lightsaber1.color);
}

class Sword {
  String name;
  String owner;

  Sword(this.name, this.owner);

  @override
  String toString() {
    return name;
  }
}

class Lightsaber extends Sword {
  String color;

  Lightsaber(super.name, super.owner, this.color);

  changeColor(String newColor) {
    color = newColor;
  }
}
