class Home{
  int? numberHome;
  String? address;
  int? floors;
  int? numrooms;
  double? area;

  Home(int? numberHome, String? address, int? floors, int? numrooms, double? area){
    this.numberHome = numberHome;
    this.address = address;
    this.floors = floors;
    this.numrooms = numrooms;
    this.area = area;
  }
}

Home uy = Home(17, "Chilonzor 8A", 9, 12, 120);

void main(){
  print("${uy.numberHome} - xonadon");
  print("${uy.address} manzil");
  print("${uy.floors} - qavat");
  print("${uy.numrooms} - xonadan iborat");
  print("Maydoni ${uy.area} metr kvadrat");

  if (uy.numrooms != null) {
    if (uy.numrooms! >= 10) {
      print("Juda katta xonadon");
    } else if (uy.numrooms! >= 4) {
      print("Katta xonadon");
    } else {
      print("O'rtacha xonadon");
    }
  }
}

