package edu.mum.coffee.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
	@Override
    protected void configure(HttpSecurity http) throws Exception {
        http
            .authorizeRequests()
                .antMatchers("/","/pro/products", "/test/add", "/persons", "/home", "/index").permitAll()
                .antMatchers("/mgtproduct", "/listpersons", "/listoforders","products/delete",
                		"/newperson","/addperson", "/products/productcart","/order","/customer",
                		"/orderdetail","/success").hasRole("ADMIN")
                
                .antMatchers( "/newperson","/addperson", "/products/productcart","/order",
                		"/customer","/orderdetail","/success").hasRole("USER")
                .anyRequest().authenticated()
                .and()
            .formLogin()
            	.permitAll()
            	.and()
            .logout()
            	.logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
            	.logoutSuccessUrl("/")
                .permitAll();
    }

	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
		auth.inMemoryAuthentication().withUser("super").password("pw").roles("ADMIN");
		auth.inMemoryAuthentication().withUser("user").password("pw").roles("USER");
	}
}