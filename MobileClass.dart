import 'dart:convert';

enum enColor { white, black, blue, green }

class Mobileclass {
  enColor color = enColor.black;
  int? price;
  String Name = "";

  Mobileclass({required String name, enColor? col}) {
    this.Name = name;
    this.color = col ?? enColor.blue;
    this.price ?? 0;
  }
  // overloading first Constructor recieve name, color which make sense
  // Second constructor receive all constructor which required in the problem
  Mobileclass.FullParams({
    required String name,
    required enColor color,
    required int price,
  }) : this.Name = name,
       this.price = price,
       this.color = color;

  void display() {
    print("Phone name : $Name , color : ${color.name} , price : $price");
  }
}
