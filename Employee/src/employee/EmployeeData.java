package employee;

public class EmployeeData extends EmployeePersonalDetails{
    private int empId;
    private String empDesignation;
    private int empSalary;
    
    EmployeePersonalDetails employeePersonalDetails;
    EmployeeData employeeData ;
    
    
    /*public EmployeeData(){
    	employeePersonalDetails = new EmployeePersonalDetails();
    	this.empId = 0;
    	this.empDesignation = null ;
    	this.empSalary = 0;
    }
    */
    
  public EmployeeData(int id , String empName,int age,String gender,String bloodGroup,String designation,int salary){
    	super(empName,age,gender,bloodGroup);	
    	empId = id;
	    empDesignation = designation;
	    empSalary = salary;
    }
    
   
    
    public int getEmpId() {
		return empId;
	}

	public void setEmpId(int id) {
		this.empId = id+1;
	}

	public String getEmpDesignation() {
		return empDesignation;
	}

	public void setEmpDesignation(String empDesignation) {
		this.empDesignation = empDesignation;
	}

	public int getEmpSalary() {
		return empSalary;
	}

	public void setEmpSalary(int empSalary) {
		this.empSalary = empSalary;
	}

	

	public EmployeeData createNewEmployee(int id , String name,int age,String gender,String bloodGroup,String designation,int salary) {
		
		employeeData.setEmpId(id);
    	employeeData.setEmpName(name);
    	employeeData.setEmpAge(age);
    	employeeData.setEmpGender(gender);
    	employeeData.setEmployeeBloodGroup(bloodGroup);
    	employeeData.setEmpDesignation(designation);
    	employeeData.setEmpSalary(salary);
		return employeeData;
	}

    public void displayEmployeeDetails() {
    	
    	System.out.print("Employee ID : "+getEmpId()+"\nName : "+ getEmpName()+"\nAge : "+getAge()+"\nGender : "+getEmpGender()+"\nBloodGroup : "+getBloodGroup()+"\nDesignation : "+getEmpDesignation()+"\nSalary : "+getEmpSalary());
    	System.out.println();
    }
    
   public EmployeeData deleteEmployee() {
   
    	employeeData.setEmpId(0);
    	employeeData.setEmpName(null);
    	employeeData.setEmpAge(0);
    	employeeData.setEmpGender(null);
    	employeeData.setEmployeeBloodGroup(null);
    	employeeData.setEmpDesignation(null);
    	employeeData.setEmpSalary(0);	
    	
    return employeeData;
    }
    
    
    public EmployeeData updateData(String name,int age,String gender,String bloodGroup,String designation,int salary) {
    	employeeData.setEmpName(name);
    	employeeData.setEmpAge(age);
    	employeeData.setEmpGender(gender);
    	employeeData.setEmployeeBloodGroup(bloodGroup);
    	employeeData.setEmpDesignation(designation);
    	employeeData.setEmpSalary(salary);
    	return employeeData;
    	
    }
    
  /*  public EmployeeData addEmployee(int id , String name,int age,String gender,String bloodGroup,String designation,int salary) {
    	
		return employeeData;
    }*/
}