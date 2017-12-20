package com.sdp.edu.utils;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class MyProperties {

	public static String get(String propertiesname, String key) {
		InputStream inputStream = MyProperties.class.getClassLoader().getResourceAsStream(propertiesname);
		Properties properties = new Properties();
		try {
			properties.load(inputStream);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return properties.getProperty(key);
	}

}
