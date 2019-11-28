package com.iu.s4.controller;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class ExceptionController {

	@ExceptionHandler(Exception.class)
	public ModelAndView getException() {
	ModelAndView mv = new ModelAndView();
	mv.setViewName("common/common_500_error");
	return mv;
	}
	

}
