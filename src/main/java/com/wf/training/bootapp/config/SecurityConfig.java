package com.wf.training.bootapp.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.User.UserBuilder;


//WebSecurityConfigurerAdapter provides default and free login form
@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter 
{
	//Configure method to manage the credentials
		/*1.it provides in memory authentication to create hard coded user
		 * 2.JDBC authentication:data base authentication
		 * 3. Remote (LDAP-Server) configuration authentication
		 */	
		//create user using the in memory authentication	
		@Override
	
		protected void configure(AuthenticationManagerBuilder auth) throws Exception 
		{
			//super.configure(auth);			
			UserBuilder builder = User.withDefaultPasswordEncoder();
			//UserBuilder builder = User.withUsername("Customer").password("Customer").roles("Customer");
			//register that we want to use in-memory authentication
			//create user using the user builder
			auth.inMemoryAuthentication()
					.withUser(builder.username("customer").password("customer").roles("customer")) //1st User
					.withUser(builder.username("accountant").password("accountant").roles("accountant"))//2nd User
					.withUser(builder.username("banker").password("banker").roles("banker"));//3rd User		
		}
		
		/* ************************************** */
		
		//Configure method to Manage the rules
		
		//Spring Security provides 3 types of Authentication
		/* 1. Http Basic Authentication (Browser Based Authentication // not recommended
		 * 2. Form Based Authentication (Inbuilt/Default Login)
		 * 3. Form Based Authentication (Custom Login)	
		 */	
		
		
		//spring security automatically maintains sessions
		@Override
		protected void configure(HttpSecurity http) throws Exception
		{
		
			http.authorizeRequests()//Start Defining the rules
				.antMatchers("/customer/**").hasRole("customer")
				.antMatchers("/accountant/**").hasRole("accountant")
				.antMatchers("/banker/**").hasRole("banker")
				.antMatchers("/ForgotPassword").permitAll()
				.antMatchers("/UserRegistration").permitAll()
				.antMatchers("/saveUserDetails").permitAll()
				.anyRequest()//means it will be authenticated for any request on application
				.authenticated()//authenticated
			.and() // joining methods - how authentication should take place
			//	.httpBasic(); //http basic authentication 
				.formLogin() //form based authentication (inbuilt login)
				.loginPage("/custom-login")//handler for custom login page
				.loginProcessingUrl("/validate")//in built handler method (free of cost)
				.permitAll()
			.and()
				.logout().permitAll()//inbuilt handler method (work by default for for url/logout with out any registration
			.and()
				.exceptionHandling()
				.accessDeniedPage("/access-denied");//handler for custom access defined page
	
			
		}
}
