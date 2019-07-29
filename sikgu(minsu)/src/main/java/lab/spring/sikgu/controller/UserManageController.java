package lab.spring.sikgu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import lab.spring.sikgu.service.UserService;

@Controller
public class UserManageController {

	@Autowired
	UserService service;

}
