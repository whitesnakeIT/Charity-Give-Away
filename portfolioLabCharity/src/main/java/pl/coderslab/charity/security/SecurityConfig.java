package pl.coderslab.charity.security;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;
import pl.coderslab.charity.role.RoleName;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {


    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder(BCryptPasswordEncoder.BCryptVersion.$2A);
    }
    @Bean
    public AntPathRequestMatcher getAntRequestMatcher() {
        return new AntPathRequestMatcher("/logout", "GET");
    }
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                .authorizeRequests()
                .antMatchers("/admin/**").hasRole(RoleName.ADMIN.name())
                .antMatchers("/app", "/logout").authenticated()
                .antMatchers("/", "form", "/login").permitAll()
//                .antMatchers("/**").authenticated()
                .and()
                .formLogin().loginPage("/login").usernameParameter("email").defaultSuccessUrl("/?msg=success")
                .and()
                .logout().logoutRequestMatcher(getAntRequestMatcher())
                .invalidateHttpSession(true).deleteCookies("JSESSIONID");
    }
}
