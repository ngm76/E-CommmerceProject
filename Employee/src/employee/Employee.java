package employee;

import java.util.Scanner;

public class Employee {
	
	static EmployeeData employeeData ;
	static String name ;
	static int age ;
	static String gender ;
	static String bloodGroup ;
	static String designation ;
	static int salary ;
	
	static int count;
	private static Scanner sc;
	
	public static void main(String args[]) {
		System.out.println("How many Employee Details you want to add ?");
		sc = new Scanner(System.in);
		count = sc.nextInt();
		
		EmployeeData emp[] = new EmployeeData[count];
		
		for(int i = 0 ; i < count ; i++) {
			System.out.println("Enter Employee Details of Employee"+(i+1));
			System.out.println("Enter Name");
			name = sc.next();
			System.out.println("Enter Age");
			age = sc.nextInt();
			System.out.println("Enter Gender");
			gender = sc.next();
			System.out.println("Enter BloodGroup");
			bloodGroup = sc.next();
			System.out.println("Enter Designation");
			designation =  sc.next();
			System.out.println("Enter Salary");
			salary = sc.nextInt();
			
			emp[i] = new EmployeeData(i+1,name, age, gender, bloodGroup, designation, salary);
			
		//emp[i] = employeeData.createNewEmployee(i,name,age, gender, bloodGroup, designation, salary);
			}
			System.out.println("Employee Data inserted");
		
		
		int choice;
		do {
			
			System.out.println("Type\n1 to Display the records\n2 to Search any record\n3 to Update any record\n4 to Delete any record\n5 to Exit");
			
			choice = sc.nextInt();
			int id;
			
			switch(choice) {
			case 1:
				for(EmployeeData e : emp ) {
						if(e == null) {
							System.out.println("No record found");
							choice = 5 ;
						}else {		
							System.out.println("Displaying the records");
							e.displayEmployeeDetails();
							System.out.println();
						}
					}
					break;
				
				
				
			case 2:
				System.out.println("Search any record");
				System.out.println("Enter the ID which you want to search");
				id = sc.nextInt();
				for(int i = 0 ; i < count ; i++) {
					if(emp[i].getEmpId() == id) {
						emp[i].displayEmployeeDetails();
					}else {
						System.out.println("No record found with ID "+id);
					}
				} 
				break;
				
			case 3:
				System.out.println("Update any record");
				System.out.println("Enter the ID whose data you want to update");
				id = sc.nextInt();
				for(int i = 0 ; i < count ; i++)  {
					if(emp[i].getEmpId() == id) {
						System.out.println("Details of Employee "+id+" are :");
						emp[i].displayEmployeeDetails();
						
						System.out.println("Enter new name");
						name = sc.next();
						emp[i].setEmpName(name);
						System.out.println("Enter new age");
						age = sc.nextInt();
						emp[i].setEmpAge(age);
						System.out.println("Enter the gender");
						gender = sc.next();
						emp[i].setEmpGender(gender);
						System.out.println("Enter BloodGroup");
						bloodGroup = sc.next();
						emp[i].setEmployeeBloodGroup(bloodGroup);
						System.out.println("Enter designation");
						designation = sc.next();
						emp[i].setEmpDesignation(designation);
						System.out.println("Enter salary");
						salary = sc.nextInt();
						emp[i].setEmpSalary(salary);
						//emp[i].updateData(name, age, gender, bloodGroup, designation, salary);
						
						System.out.println("Data updated successfully ");
						
					}else {
						System.out.println("No record found with ID "+id);
					}
				}
				break;
				
			case 4: System.out.println("Delete any record");
					System.out.println("Enter the ID whose data you want to delete");
					id = sc.nextInt();
					
					for(int i = 0 ; i < count ; i++) {
						if(emp[i].getEmpId() == id) {
							emp[i] = null;
							System.out.println("Deleted the record successfully");
						}
					/*}
					for(EmployeeData e : emp) {
						if(id == e.getEmpId()) {
							e.deleteEmployee();
							System.out.println("Record deleted");
						}*/
						else {
							System.out.println("No record found with ID "+id);
						}
					}
				break;
			}
			
			
			
		}while(choice != 5);
		
		
		
	sc.close();	
	}
	
   
}
