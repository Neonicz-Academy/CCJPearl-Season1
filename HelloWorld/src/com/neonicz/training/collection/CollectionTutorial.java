package com.neonicz.training.collection;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public class CollectionTutorial {

	public static void main(String[] args) {
		/*
		 * List<String> strList = new ArrayList<String>(); strList.add("Arun");
		 * strList.add("Sachin"); strList.add("Sachin1"); strList.add("Sachin2");
		 * Collections.reverse(strList);
		 * 
		 * for(String str : strList) { System.out.println(str); }
		 * 
		 * 
		 * for(int i = 0; i < strList.size(); i ++ ) {
		 * System.out.println(strList.get(i)); }
		 */

		Map<String, String> myMap = new HashMap<String, String>();
		myMap.put("name", "Arun");
		myMap.put("passion", "Sachin");
		myMap.put("name", "Sachin");
		
		/*
		 * System.out.println(myMap.get("name"));
		 * System.out.println(myMap.get("passion"));
		 */
		
		
		for(Entry<String, String> entry : myMap.entrySet()) {
			System.out.println(entry.getKey() + " : "+ entry.getValue());
		}
	}

}
