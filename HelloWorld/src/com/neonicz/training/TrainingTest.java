package com.neonicz.training;

import java.io.FileInputStream;
import java.io.FileNotFoundException;

public class TrainingTest {

	public static void main(String[] args) {
		
		fileReader() ;
	}
	
	public static void fileReader() {
		String message;
		try {
			FileInputStream fs = new FileInputStream("test.txt");
			message = "File Found";
			// throw new Exception("New Unreported Exception");
		}
		catch (FileNotFoundException ex) {
			ex.printStackTrace();
			message = "File Not Found";
		} catch (Exception e) {
			// TODO Auto-generated catch block
			message = "Exception Block Executed";
			e.printStackTrace();
		}
		finally {
			System.out.println("I'm Finally Executing");
		}
		
		System.out.println( "Message :> " + message);
	}

}
