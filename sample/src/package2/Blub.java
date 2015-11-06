package package2;

public class Blub {
  public int blubInt() throws StackOverflowError { 
    return 0; 
  } 
   
  public int blubInt2(int blub) { 
    return blub; 
  } 
   
  public boolean blubBoolean() { 
    return true; 
  } 
   
  public Object blubObject() { 
    return null; 
  } 
   
  public Blub blubBlub() { 
    return new Blub(); 
  } 
   
  public double blubDouble() { 
    return 0.5;
  } 

  public int[] blubArray() { 
    return new int[]{1};
  } 
   
  public double[] blubArrayDouble() { 
    return new double[]{1.1};
  } 
   
}