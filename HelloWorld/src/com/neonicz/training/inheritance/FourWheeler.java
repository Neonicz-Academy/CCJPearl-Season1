package com.neonicz.training.inheritance;

public class FourWheeler extends Vehicle{
	
	public FourWheeler() {
		this.numberOfSeats = 5;
		this.numberOfWheels = 4;
	}

	public void runVehicle() {
		System.out.println("Number of Seats of this vehicle = " + this.numberOfSeats );
		System.out.println("Number of Wheels of this vehicle = " + this.numberOfWheels );
		System.out.println("Run my Four wheeler");
	}
}
