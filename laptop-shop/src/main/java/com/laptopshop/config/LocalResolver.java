package com.laptopshop.config;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.util.StringUtils;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.i18n.AcceptHeaderLocaleResolver;


@Configuration
public class LocalResolver extends AcceptHeaderLocaleResolver implements WebMvcConfigurer  {

	public Locale resolveLocale(HttpServletRequest request) {
		String languageHeader = request.getHeader("Accept-Langguage");
		
		return StringUtils.hasLength(languageHeader) ? Locale.lookup(Locale.LanguageRange.parse(languageHeader)
				, List.of(new Locale("en"), new Locale("fr"))) : Locale.getDefault();
		
	}
	
	@Bean
	public ResourceBundleMessageSource ResourceBundleMessageSource () {
		ResourceBundleMessageSource messageSource = new ResourceBundleMessageSource();
		messageSource.setBasename("messages");
		messageSource.setDefaultEncoding("UTF-8");
		messageSource.setCacheSeconds(3600);
		return messageSource;
	}
	
}


















