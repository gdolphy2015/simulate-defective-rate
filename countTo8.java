/*
 * Finding solutions to x1 + x2 + x3 = 8, using only non-negative integers.
 */

public class countTo8 {

	public static void main(String[] args) {
		int counter = 0;
		for (int i = 0; i < 10; i++) {
			for (int j = 0; j < 10; j++) {
				for (int k =0 ; k < 10; k++) {
					if (i + j + k == 8) {
						System.out.println(i + " + " + j + " + " + k);
						counter++;
					}
				}
			}
		}	
		System.out.println(counter);
	}
}
