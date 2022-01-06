public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435"; 
public void setup() {            
  for (int i = 0; i < e.length() / 10; i++) {
    int index = i*10;
    
    String substring = e.substring(index, index+10);
    boolean numPrime = isPrime(Double.parseDouble(substring));
    if(numPrime)
      System.out.println(substring + " is prime!");
  }
}  
public boolean isPrime(double num) {   
  if (num < 3)
    return false;
  for (int i = 2; i <= Math.sqrt(num); i++) {
    if (num % i == 0) return false;
  } 
  return true;
} 
