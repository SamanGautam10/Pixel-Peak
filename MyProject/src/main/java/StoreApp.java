import java.util.Scanner;
import java.util.ArrayList;


public class StoreApp {
	
	//main method for all the functioning of the program
	public static void main(String[] args) {
		
		//creating array list
		ArrayList<SmartphoneInventoryModel> smartPhone = new ArrayList<SmartphoneInventoryModel>();
		Scanner scanner = new Scanner(System.in);
		int choice;
		
		//choices for the user
		System.out.println("1. Add Product");
		System.out.println("2. Update Product");
		System.out.println("3. View Product");
		System.out.println("4. Delete Product");
		System.out.println("5. Exit");
		
		System.out.println("Choose the option:");
		choice = scanner.nextInt();
		
		while (choice < 6) {
			//switch case for different choices
			switch (choice) {
				case 1:
					StoreController.addNewProduct(smartPhone);
					break;
					
				case 2:
					StoreController.updateProduct(smartPhone);
					break;
				
				case 3:
					StoreController.getSmartphoneInfo(smartPhone);
					break;
					
				case 4:
					StoreController.deleteProduct(smartPhone);
					break;
					
				case 5:
					System.out.println("System Closed!!! Thank you!!!");
					break;
					
				default:
					System.out.println("Invalid choice please select a valid option!!!");
					break;
			}
		}
	}
}
