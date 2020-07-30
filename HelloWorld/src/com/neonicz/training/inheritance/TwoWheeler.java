package com.neonicz.training.inheritance;

public class TwoWheeler extends Vehicle {
	
	public TwoWheeler() {
		this.numberOfSeats = 1;
		this.numberOfWheels = 2;
	}

	public void runVehicle() {
		System.out.println("Number of Seats of this vehicle = " + this.numberOfSeats );
		System.out.println("Number of Wheels of this vehicle = " + this.numberOfWheels );
		System.out.println("Run my two wheeler");
	}
	
	
}
