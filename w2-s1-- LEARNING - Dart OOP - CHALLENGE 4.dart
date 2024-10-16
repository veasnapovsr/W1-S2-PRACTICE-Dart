//class distance:cm, meter, k_meter

class Distance {
  
  
  final double _meters; //can't be changed, it set
  const Distance._(this._meters); //instance create

 
  factory Distance.cms(double cms) { //factory 4 crating instances of Calss Distance
    return Distance._(cms / 100); //convert cms to m
    
    
  }

  factory Distance.meters(double meters) { //take value meter
    return Distance._(meters);
    
    
  }

  factory Distance.kms(double kms) {  //convert it from km to m
    return Distance._(kms * 1000);
    
    
  }

  // Getters Method
  
  double get cms => _meters * 100;  //to return distance in cm
  double get meters => _meters;     //to return distance in meter
  double get kms => _meters / 1000; //return in km

  // Operating by adding 2 distances 
  
  Distance operator +(Distance other) {
    
    return Distance._(this._meters + other._meters);
    
    
  }

  
}

void main() {
  
  Distance d1 = Distance.kms(3.4);
  Distance d2 = Distance.meters(1000);
  
  Distance result = d1 + d2;
  
  print('${result.kms} kms');  // Output is : 4.4 kms
  
  
  
}