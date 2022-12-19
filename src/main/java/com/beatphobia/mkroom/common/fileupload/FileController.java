package com.beatphobia.mkroom.common.fileupload;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;

import javax.annotation.Resource;

import org.springframework.core.io.InputStreamResource;
import org.springframework.core.io.InputStreamSource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/files")
public class FileController {
	
	@GetMapping("/upload")
	public String showUpload() {
		return "fileUpload";
	}
	
	@PostMapping("/upload")
	public ResponseEntity<String> handleUpload(@RequestParam("file") MultipartFile file) {
		
		// save the uploaded file to a desired location
		
		return ResponseEntity.ok("File uploaded successfully");
	}
	
	@GetMapping("/download")
	public ResponseEntity<InputStreamSource> handleFileDownload() {
		// Retrieve the file from the desired location
		File file = new File("/path/to/file.txt");
		
		InputStreamSource resource = null;
		try {
			resource = new InputStreamResource(new FileInputStream(file));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		
		return ResponseEntity.ok()
							 .header(HttpHeaders.CONTENT_DISPOSITION, "attachment;filename=" + file.getName())
							 .contentType(MediaType.APPLICATION_OCTET_STREAM)
							 .contentLength(file.length())
							 .body(resource);
		
	}
	
}
