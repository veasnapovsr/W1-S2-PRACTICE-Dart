// No class for roof cuz dk type of it

// Class for Houes"Window

class Window {

  String color;
  String position;  // e.g: left riht or center
  int floor;

  Window(this.color, this.position, this.floor);


}

// Class fpr house's Door
class Door {

  String color;
  String position;  // e.g., left right or center

  Door(this.color, this.position);


}


// Class for house's Chimney

class Chimney {
  bool hasChimney;

  Chimney(this.hasChimney);


}

//  house's class extended

class House {
  String address;
  List<Window> windows = [];
  Door door;
  Chimney chimney;

  // the Constructor
  House(this.address, this.door, this.chimney);

  // Adding window to the house

  void addWindow(Window newWindow) {
    this.windows.add(newWindow);

  }

}



void main() {
  // Create components
  Door door = Door("black", "center");

  Chimney chimney = Chimney(true);

  // Create a house
  House house1 = House("123 Street", door, chimney);

  // Add windows to the house
  house1.addWindow(Window("red", "left", 1));
  house1.addWindow(Window("green", "right", 1));



  // Output

  print("Door's Position: ${house1.door.position}, Color: ${house1.door.color}");

  print("Has Chimney: ${house1.chimney.hasChimney}");

  // Print windows info
  for (Window window in house1.windows) {
    print("Window_Color:${window.color},Position:${window.position},Floor:${window.floor}");


  }



}