public class SmartphoneInventoryModel {
	
	//Variable declaration
	private int modelCode;
	private String phoneName;
	private int ram;
	private int memory;
	private int displaySize;
	private double price;
	
	//Constructor of SmartphoneInventoryModel
	public SmartphoneInventoryModel(int modelCode, String phoneName, int ram, int memory, int displaySize, double price){
		this.modelCode = modelCode;
		this.phoneName = phoneName;
		this.ram = ram;
		this.displaySize = displaySize;
		this.memory = memory;
		this.price = price;
	}
	
	//Getter methods (Accessor Method)
	
	public int getModelCode() {
		return this.modelCode;
	}
	
	public String getPhoneName() {
		return this.phoneName;
	}
	
	public int getRam() {
		return this.ram;
	}
	
	public int getMemory() {
		return this.memory;
	}
	
	public int getDisplaySize() {
		return this.displaySize;
	}
	
	public double getPrice() {
		return this.price;
	}
	
	//Setter methods (Mutator Method)
	public void setModelCode(int modelCode) {
		this.modelCode = modelCode;
	}
	
	public void setPhoneName(String phoneName) {
		this.phoneName = phoneName;
	}
	
	public void setRam(int ram) {
		this.ram = ram;
	}
	
	public void setMemory(int memory) {
		this.memory = memory;
	}
	
	public void setDisplaySize(int displaySize) {
		this.displaySize = displaySize;
	}
	
	public void setPrice(double price) {
		this.price = price;
	}
}
