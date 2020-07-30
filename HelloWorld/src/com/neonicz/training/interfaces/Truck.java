package com.neonicz.training.interfaces;

public class Truck extends FourWheelerAbstract implements FourWheeler, Vehicle {

	@Override
	public void runVehilce() {
		this.build();
		this.purposeOfMyFourWheeler();
		this.typeOfMyFourWheeler();
		this.blowHorn();
		this.fuelType();
		System.out.println("Running my Super Truck");
	}

	@Override
	public void blowHorn() {
		System.out.println(" HOOOOORN HOORRRN ... ");

	}

	@Override
	public void typeOfMyFourWheeler() {
		System.out.println("Truck");

	}

	@Override
	public void purposeOfMyFourWheeler() {
		System.out.println("Carrying Goods");

	}

	@Override
	public void build() {
		System.out.println("Strong Body to hold the Goods");

	}

	@Override
	void fuelType() {
		System.out.println("Diesel Fuel");
		
	}

}
