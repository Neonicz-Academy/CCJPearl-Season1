package com.neonicz.training.inheritance;

public class Vehicle {
	
	int numberOfWheels;
	int numberOfSeats;
	
	public Vehicle() {
		this.numberOfSeats = 2;
		this.numberOfWheels = 2;
	}

	public void runVehicle() {
		System.out.println("Running My vehicle");
	}
}
