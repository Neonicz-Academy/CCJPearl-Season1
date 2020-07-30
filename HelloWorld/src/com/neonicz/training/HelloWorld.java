package com.neonicz.training;

import com.neonicz.training.inheritance.Car;
import com.neonicz.training.inheritance.FourWheeler;
import com.neonicz.training.inheritance.TwoWheeler;
import com.neonicz.training.inheritance.Vehicle;

public class HelloWorld {

	public static void main(String[] args) {
		
		  Vehicle vehicle = new Car();
		  
		  if(vehicle instanceof Car) {
			  ((Car) vehicle).runMyCar();
		  }
		 
		
		
		/*
		 * TwoWheeler twoWheeler = new TwoWheeler();
		 * 
		 * twoWheeler.runVehicle();
		 */
		 
	}

}
