package Pack1;
import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;

public class Shuffle {

	public static void main(String[] args) {
		
		 int[] array = { 1, 2, 3, 4, 5, 6 };

		    shuffleArray(array);
		    System.out.print("Shuffle Array :");
		    for (int i = 0; i < array.length; i++)
		    {
		    	
		      System.out.print(array[i] + " ");
		    }
		    System.out.println();
		  }

		  
		  static void shuffleArray(int[] ar)
		  {
		   
		    Random rnd = ThreadLocalRandom.current();
		    for (int i = ar.length - 1; i > 0; i--)
		    {
		      int index = rnd.nextInt(i + 1);
		      // Simple swap
		      int a = ar[index];
		      ar[index] = ar[i];
		      ar[i] = a;
		    }
	

	}

}
