package com.neonicz.training.interfaces;

public class Car extends FourWheelerAbstract implements Vehicle, FourWheeler {

	@Override
	public void typeOfMyFourWheeler() {
		System.out.println("Car");

	}

	@Override
	public void purposeOfMyFourWheeler() {
		System.out.println("Trasporationation ");

	}

	@Override
	public void build() {
		System.out.println("Sedan");

	}

	@Override
	public void runVehilce() {
		this.build();
		this.purposeOfMyFourWheeler();
		this.typeOfMyFourWheeler();
		this.blowHorn();
		this.fuelType();
		System.out.println("Running my Sedan Car");

	}

	@Override
	public void blowHorn() {
		System.out.println("POM POM ... ");

	}

	@Override
	void fuelType() {
		System.out.println("Petrol Fuel Type");
		
	}

}
