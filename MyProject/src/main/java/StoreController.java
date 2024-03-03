import java.util.ArrayList;
import java.util.Scanner;

public class StoreController {
	
	//method for the addition of new product
	public static void addNewProduct(ArrayList<SmartphoneInventoryModel> smartPhone) {
		//ArrayList<SmartphoneInventoryModel> smartPhone = new ArrayList<SmartphoneInventoryModel>();
		
		Scanner scanner =  new Scanner(System.in);		//Creating a scanner to take input from user
		
		System.out.println("Enter the model code: ");
		int modelCode = scanner.nextInt();	//takes input of modelCode
		
		//checking if model code already exists
		for (SmartphoneInventoryModel phoneInventory: smartPhone) {
			//checking if the model code already exists
			if(phoneInventory.getModelCode() == modelCode) {
				System.out.println("The model code" + modelCode + " already exists");
			}
		}
		
		//taking inputs from the user
		System.out.println("Enter name of the phone: ");
		String phoneName = scanner.next();
		
		System.out.println("Enter RAM size of the phone: ");
		int ram = scanner.nextInt();
		
		System.out.println("Enter the size of display: ");
		int displaySize = scanner.nextInt();
		
		System.out.println("Enter the storage size of the phone: ");
		int memory = scanner.nextInt();
		
		System.out.println("Enter price of the phone: ");
		int price = scanner.nextInt();
		
		//creating an object of the phone
		SmartphoneInventoryModel phoneInformation = new SmartphoneInventoryModel(modelCode, phoneName, ram, memory, displaySize, price);
		
		//adding the created object in the array list
		smartPhone.add(phoneInformation);
		System.exit(0);
	}
	
	//method to delete existing phone's information
	public static void deleteProduct(ArrayList<SmartphoneInventoryModel> smartPhone) {
		
		//creating array list
		//ArrayList<SmartphoneInventoryModel> smartPhone = new ArrayList<SmartphoneInventoryModel>();
		
		Scanner scanner = new Scanner (System.in);
		
		System.out.println("Enter the model of phone you want to delete: ");
		int modelCode = scanner.nextInt();
		
		int removeIndex = -1;
		
		
		//searching for the index of phone's model
		for(int i = 0; i < smartPhone.size(); i++) {
			if(smartPhone.get(i).getModelCode()== modelCode) {
				removeIndex = i;
				break;
			}
		}
		
		//removing the phone information if model no exists
		if(removeIndex > -1) {
			smartPhone.remove(removeIndex);
			System.out.println("Phone of model no " + modelCode + "has been removed!!!");
		} 
		else {
			System.out.println("Phone of model no " + modelCode + "not found!!!");
		}
	}
	
	//method to modify information about existing phone
	public static void updateProduct(ArrayList<SmartphoneInventoryModel> smartPhone) {
		//creating array list
		//ArrayList<SmartphoneInventoryModel> smartPhone = new ArrayList<SmartphoneInventoryModel>();
		
		Scanner scanner = new Scanner (System.in);
		
		//taking model no to update the information
		System.out.println("Enter the model no to update the information of the phone: ");
		int modelCode = scanner.nextInt();
		
		int updateIndex = -1;
		
		//getting the index of the phone from array list
		for (int i = 0; i < smartPhone.size(); i++) {
			if (smartPhone.get(i).getModelCode() == modelCode) {
				updateIndex = i;
				break;
			}
		}
		
		//updating the information of the phone if the model exists
		if(updateIndex > -1) {
			
			//getting new information from the user
			System.out.println("Enter new name for the phone: ");
			String newName = scanner.next();
			
			System.out.println("Enter new RAM size for the phone: ");
			int newRam = scanner.nextInt();
			
			System.out.println("Enter new storage size for the phone: ");
			int newMemory = scanner.nextInt();
			
			System.out.println("Enter new display size for the phone: ");
			int newDisplaySize = scanner.nextInt();
			
			System.out.println("Enter new price of the phone: ");
			double newPrice = scanner.nextInt();
			
			//creating object to store the updated info and upload in the array list
			SmartphoneInventoryModel updatedPhone = new SmartphoneInventoryModel(modelCode, newName, newRam, newMemory, newDisplaySize, newPrice);
			
			//updating value in array list
			smartPhone.set(updateIndex, updatedPhone);
			
			System.out.println("All the information of the phone has been update successfully!!!");
			System.out.println("Model No. of the phone " + modelCode);
		}
		else {
			System.out.println("Phone of model no " + modelCode + "does not exist!!!");
		}
	}
	
	//method to get information about the smartphone
	public static void getSmartphoneInfo(ArrayList<SmartphoneInventoryModel> smartPhone) {
		
		//creating an array list
		//ArrayList<SmartphoneInventoryModel> smartPhone = new ArrayList<SmartphoneInventoryModel>();
		
		//user input the model no for the phone's information to be displayed
		Scanner scanner = new Scanner(System.in);
		
		System.out.println("Enter the model no. of the phone which information needs to te displayed: ");
		int modelCode = scanner.nextInt();
		
		//find the phone's information
		for (SmartphoneInventoryModel phoneInformation: smartPhone) {
			if (phoneInformation.getModelCode() == modelCode) {
				
				//displaying the information
				System.out.println("Model No.: " +phoneInformation.getModelCode());
				System.out.println("Phone Name: " +phoneInformation.getPhoneName());
				System.out.println("RAM Size: " +phoneInformation.getRam());
				System.out.println("Storage Size: " +phoneInformation.getMemory());
				System.out.println("Display Size: " +phoneInformation.getDisplaySize());
				System.out.println("Price: " +phoneInformation.getPrice());
				return;
			}
			
			else {
				System.out.println("Smartphone with model no. " +modelCode + "not found!!!");
				break;
			}
		}
	}
}

