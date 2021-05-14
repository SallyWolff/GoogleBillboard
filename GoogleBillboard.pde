public final static String euler = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";
public void setup() {  
  //double num = Double.parseDouble(euler.substring(firstNum, lastNum));
  for ( int i=2; i < euler.length()-10; i++) {
    String digits = euler.substring(i, i+10);
    double num = Double.parseDouble(digits);
    for ( int j = 2; j < Math.sqrt(num); j++) {
      if (isPrime(num)) 
    break;
    if (isPrime(num)) {
    System.out.println(num+"Is prime!");
}
    }
  }
}
public void draw() {
  
}
int firstNum = 0;
int lastNum = 10;
public boolean isPrime(double bnum) {
// Corner cases
        if (bnum <= 1)
            return false;
        if (bnum <= 3)
            return true;
  
        // This is checked so that we can skip
        // middle five numbers in below loop
        if (bnum % 2 == 0 || bnum % 3 == 0)
            return false;
  
        for (int i = 5; i * i <= bnum; i = i + 6)
            if (bnum % i == 0 || bnum % (i + 2) == 0)
                return false;
  
        return true;
}

