package com.neonicz.training.inheritance;

public class Car extends FourWheeler {
	
	String carColor;
	String carEngineCapacity;
	
	public Car() {
		this.carColor = "Red";
		this.carEngineCapacity = "2000";
	}
	
	public void runMyCar() {
		super.runVehicle();
		System.out.println("My Car Is running ");
		System.out.println("My Car Color : " + this.carColor);
		System.out.println("My Car Engine Capacity : "+ this.carEngineCapacity);
	}
}
