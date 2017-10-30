package com.edu.math.core;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.net.URI;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Properties;
import javax.servlet.http.HttpServletRequest;

public class WelcomeProps {
	
	private static String practice_mode="";
	
	public static void writeProps(String propertie, String value){
		String propFilePath = "com/edu/math/core/welcome.properties";

		File file = new File(URI.create(WelcomeProps.class.getResource("/").toString() + propFilePath));
		Properties prop = new Properties();
		try (FileOutputStream fos = new FileOutputStream(file)) {
			prop.setProperty(propertie, value);

			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			prop.store(fos, "Update properties value at" + sdf.format(new Date()) + ".");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static String getPractiveMode(){
		String propFilePath = "com/edu/math/core/welcome.properties";
		File file = new File(URI.create(WelcomeProps.class.getResource("/").toString() + propFilePath));
		Properties prop = new Properties();
		try(FileInputStream fis=new FileInputStream(file)){
			practice_mode=prop.getProperty("propertie","times");
		}catch(Exception e){
			e.printStackTrace();
		}
		return practice_mode;
	}
	
	public static void main(String[] args) {
		writeProps("PRACTICE_MODE","times");
	}
}
