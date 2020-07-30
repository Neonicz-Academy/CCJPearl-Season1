package com.neonicz.training.car;

public class Car {
	
	String engine;
	String wheel;
	String color;
	String horn;
	
	public Car() {
		engine = "New Engine Version 5";
		wheel = "20 inch Wheels";
		color = "White";
		horn = "Pom Pom ... ";
	}



	public Car(String engine, String wheel, String color, String horn) {
		super();
		this.engine = engine;
		this.wheel = wheel;
		this.color = color;
		this.horn = horn;
	}



	public void runCar() {
		System.out.println("My Car Color = " + color);
		System.out.println(" My Engine Starts  = " + engine);
		System.out.println("Rotate the wheels  = " + wheel);
		blowHorn();
		System.out.println("My Car runs faster ..... ");
	}
	
	public void blowHorn() {
		System.out.println("Horn -> " + horn);
	}

}
