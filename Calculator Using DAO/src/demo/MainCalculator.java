package demo;
import java.util.Scanner;

public class MainCalculator {
	
	private static int choice;
	private static int result;
	
	public static void main(String[] args) {
		
		InterfaceImplementation interfaceImplementationObj = new InterfaceImplementation();
		Model model = new Model();
		
		System.out.println("Enter Num1 and Num2");
		Scanner sc ;
		sc = new Scanner(System.in);
		int num1 = sc.nextInt();
		int num2 = sc.nextInt();
		
		model.setNum1(num1);
		model.setNum2(num2);
		
		do {
			System.out.println("Enter your choice\n1.Addition\n2.Subtraction\n3.Multiply\n4.Division\n5.Modulus Operation\n6.Exit");
			System.out.println();
			choice = sc.nextInt();
			
			switch(choice) {
			
			case 1 :
				result = interfaceImplementationObj.add(num1, num2);
				System.out.println("Addition is "+result);
				break;
				
			case 2:
				result = interfaceImplementationObj.subtract(num1, num2);
				System.out.println("Subtraction is "+result);
				break;
				
			case 3:
				result = interfaceImplementationObj.multiply(num1, num2);
				System.out.println("Multiplication is "+result);
				break;
				
			case 4:
				result = interfaceImplementationObj.divide(num1, num2);
				System.out.println("Division is "+result);
				
				break;
				
			case 5:
				result = interfaceImplementationObj.modulo(num1, num2);
				System.out.println("Modulus Operation result is "+result);
				
				break;
			
			}
			
			
		}while(choice != 6);
		System.out.println("Closing the Calculator");
		sc.close();
		
	}  

}
