package pl.coderslab.charity.user;

import lombok.RequiredArgsConstructor;
import org.hibernate.Hibernate;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import pl.coderslab.charity.role.RoleName;
import pl.coderslab.charity.role.RoleService;

import javax.transaction.Transactional;
import java.util.Set;

@Service
@RequiredArgsConstructor
@Transactional
public class UserService { //implements UserDetailsService {
    private final UserRepository userRepository;

    private final RoleService roleService;

    public User findByEmail(String email) {
        User user = userRepository.findByEmail(email)
                .orElseThrow(() -> new UsernameNotFoundException(email));
        loadRolesToUser(user);
        return user;
    }

    public void loadRolesToUser(User user) {
        Hibernate.initialize(user.getRoles());
    }

    public void create(User user){
        user.setRoles(Set.of(roleService.findByName(RoleName.ROLE_USER.name())));
        userRepository.save(user);
    }

    public boolean passwordMatch(String password1, String password2){
        return password1.equals(password2);
    }
//    @Override
//    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
//        User user = findByEmail(email);
//        user.setRoles(Collections.singleton(new SimpleGrantedAuthority("ROLE_USER")));
//        System.out.println(user);
//        System.out.println(user.getUsername());
//        System.out.println(user.getPassword());
//        return new UserDetails() {
//        };

//    }
}
