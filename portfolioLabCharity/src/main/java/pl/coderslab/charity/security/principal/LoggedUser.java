package pl.coderslab.charity.security.principal;

import lombok.Getter;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

import java.util.Collection;

@Getter
public class LoggedUser extends User {
    pl.coderslab.charity.user.User user;

    public LoggedUser(String username,
                      String password,
                      Collection<? extends GrantedAuthority> authorities,
                      pl.coderslab.charity.user.User user) {
        super(username, password, authorities);
        this.user = user;
    }
}
