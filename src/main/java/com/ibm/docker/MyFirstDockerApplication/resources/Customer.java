package com.ibm.docker.MyFirstDockerApplication.resources;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("rest/docker/Customer")
public class Customer {

	@GetMapping
	public String getCustomers() {
		return "Here are all the Customers";
	}
}
