package demo;

public class InterfaceImplementation implements CalculatorInterface {

	@Override
	public int add(int num1, int num2) {
		return num1+num2;
	}

	@Override
	public int subtract(int num1, int num2) {
		if(num1 > num2)
			return num1 - num2;
		else
			return num2 - num1;
	}

	@Override
	public int multiply(int num1, int num2) {
		return num1 * num2;
	}

	@Override
	public int divide(int num1, int num2) {
		if(num2 != 0)
			return num1/num2;
		return 0;
		
	}

	@Override
	public int modulo(int num1, int num2) {
		return num1%num2;
	}
	
	

}
