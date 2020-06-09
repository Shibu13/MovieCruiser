package com.cognizant.MOVIECRUISE.security.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.BeanIds;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;


@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter{
	@Bean
	public BCryptPasswordEncoder bCryptPasswordEncoder() {
		return new BCryptPasswordEncoder();
	}
	
	
	@Override
	public void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests()
		.antMatchers("/showreg", "/", "/index.html", "/registeruser", "/showlogin","/login", "/", "/login/*")
		.permitAll()
		.antMatchers("/admin/*","/movie-edit-item","/movie-item-admin","/edit-movie-status","/generate-report")
		.hasAnyAuthority("ADMIN")
		.anyRequest()
		.authenticated()
		.and()
		.formLogin().loginPage("/showlogin").permitAll()
		.and()
		.logout().invalidateHttpSession(true).clearAuthentication(true)
		.deleteCookies("JSESSIONID").logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
		.logoutSuccessUrl("/showlogin").permitAll()
		.and().csrf().disable();
		
	}
	@Bean(name=BeanIds.AUTHENTICATION_MANAGER)
	@Override
	public AuthenticationManager authenticationManagerBean() throws Exception {
		return super.authenticationManagerBean();
	}
}
