package employee;

class EmployeePersonalDetails{

    private String empName;
    private int age;
    private String gender;
    private String bloodGroup;
    
    
    public EmployeePersonalDetails(String empName,int age,String gender,String bloodGroup){
        this.empName = empName;
        this.age = age;
        this.gender = gender;
        this.bloodGroup = bloodGroup;
    }
    
    public String getEmpName(){
        return empName;
    }
    
    public int getAge(){
        return age;
    }
    
    public String getEmpGender() {
    	return gender;
    }
    
    public String getBloodGroup(){
    	return bloodGroup;
    }
    
    
    public void setEmpName(String name) {
    	empName = name;
    }
    
    public void setEmpAge(int age) {
    	this.age = age;
    }
        
    public void setEmpGender(String gender) {
    	this.gender = gender;
    }
    
    public void setEmployeeBloodGroup(String bloodGroup) {
    	this.bloodGroup = bloodGroup;
    }
     
}
