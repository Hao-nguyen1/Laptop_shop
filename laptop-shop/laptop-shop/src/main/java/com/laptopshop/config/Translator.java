package com.laptopshop.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.stereotype.Component;

@Component
public class Translator {
	private static ResourceBundleMessageSource messageSource;
	
	@Autowired
	public Translator(ResourceBundleMessageSource messageSource){
		
	}
	
}
