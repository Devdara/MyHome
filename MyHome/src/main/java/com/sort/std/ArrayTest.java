package com.sort.std;

import java.util.ArrayList;

public class ArrayTest {

	public static void main(String[] args) {
		
		ArrayList tList = null;
		tList = new ArrayList();
		tList.add("1");
		tList.add("2");
		tList.add("3");
		
		for(int i=0 ; i<tList.size() ; i++){
			System.out.println(tList.get(i));
		}
		
		
	}

}
