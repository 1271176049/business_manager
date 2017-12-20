package com.sdp.edu.utils;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class MyUploudFileUtils {

	public static List<String> upload_images(MultipartFile[] files) {
		String url = MyProperties.get("images.properties", "windowspath_images");
		List<String> image_url_list = new ArrayList<String>();
		for (int i = 0; i < files.length; i++) {
			MultipartFile file = files[i];
			if (!file.isEmpty()) {
				try {
					// file.transferTo(new
					// File(url+UUID.randomUUID().toString()+file.getOriginalFilename()));
					String image_url = url + System.currentTimeMillis() + file.getOriginalFilename();
					image_url_list.add(image_url);
					file.transferTo(new File(image_url));
				} catch (IllegalStateException | IOException e) {
					e.printStackTrace();
				}
			}
		}
		return image_url_list;
	}

}
