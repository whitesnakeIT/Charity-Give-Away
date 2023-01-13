package pl.coderslab.charity.user;

import lombok.RequiredArgsConstructor;
import org.hibernate.Hibernate;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pl.coderslab.charity.mapstruct.dto.user.UserIdAndPassword;
import pl.coderslab.charity.mapstruct.dto.user.UserSlimNoPassword;
import pl.coderslab.charity.mapstruct.mapper.UserMapper;
import pl.coderslab.charity.role.RoleName;
import pl.coderslab.charity.role.RoleService;

import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class UserService { //implements UserDetailsService {
    private final UserRepository userRepository;

    private final RoleService roleService;

    private final BCryptPasswordEncoder bCryptPasswordEncoder;

    private final UserMapper userMapper;

    @Transactional
    public User findByEmail(String email) {
        User user = userRepository.findByEmail(email)
                .orElseThrow(() -> new UsernameNotFoundException(email));
        loadRolesToUser(user);
        return user;
    }

    @Transactional
    public User findById(Long id) {
        User user = userRepository
                .findById(id)
                .orElseThrow(() -> new RuntimeException("I can't find user by user id"));
        loadRolesToUser(user);
        return user;
    }

    public void loadRolesToUser(User user) {
        Hibernate.initialize(user.getRoles());
    }

    @Transactional
    public void create(User user) {
        user.setRoles(Set.of(roleService.findByName(RoleName.ROLE_USER.name())));
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        user.setEnabled(true);
        userRepository.save(user);
    }

    @Transactional
    public void createAdmin(User user) {
        user.setRoles(Set.of(roleService.findByName(RoleName.ROLE_ADMIN.name())));
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        user.setEnabled(true);
        userRepository.save(user);
    }

    @Transactional
    public void edit(User userToEdit) {
        if (userToEdit.getRoles() == null) {
            User userFromDB = findById(userToEdit.getId());
            userToEdit.setRoles(userFromDB.getRoles());
            userToEdit.setEnabled(userFromDB.isEnabled());
        }
        userRepository.save(userToEdit);
    }

    @Transactional
    public void delete(Long id) {
        User user = findById(id);
        if ((user.hasRole(RoleName.ROLE_ADMIN.name())) && (findAllAdmins().size() == 1)) {
            throw new RuntimeException("You are last administrator, can't delete this account");
        }
        userRepository.delete(user);
    }

    public List<User> findAllAdmins() {
        List<User> admins = findAll()
                .stream()
                .filter(user -> user.hasRole(RoleName.ROLE_ADMIN.name()))
                .collect(Collectors.toList());

        return admins;
    }

    public List<User> findAllBasicUsers() {
        List<User> basicUsers = findAll()
                .stream()
                .filter(user -> user.hasRole(RoleName.ROLE_USER.name()))
                .collect(Collectors.toList());
        return basicUsers;

    }

    public List<User> findAll() {
        return userRepository.findAll();
    }

    public boolean passwordMatch(String password1, String password2) {
        return password1.equals(password2);
    }

    public boolean isPasswordCorrect(String passwordToCheck, String userPassword) {

        return bCryptPasswordEncoder.matches(passwordToCheck, userPassword);
    }

    @Transactional
    public void block(User user) {
        user.setEnabled(false);
        edit(user);

    }

    @Transactional
    public void unBlock(User user) {
        user.setEnabled(true);
        edit(user);
    }

    public String setRedirectUrlToShowListUsersByRole(Long userId){
        String redirectUrlDependsOfRole = "";
        if (findById(userId).hasRole(RoleName.ROLE_USER.name())) {
            redirectUrlDependsOfRole="/admin/users/all";
        }
        else if (findById(userId).hasRole(RoleName.ROLE_ADMIN.name())){
            redirectUrlDependsOfRole="/admin/admins/all";
        }
        return redirectUrlDependsOfRole;
    }

    @Transactional
    public boolean updatePassword(User user, String oldPassword, String newPassword, String confirmNewPassword) {

        boolean compareActualAndOldPassword = bCryptPasswordEncoder.matches(oldPassword, user.getPassword());


        boolean compareActualAndNewPassword = bCryptPasswordEncoder.matches(newPassword, user.getPassword());
        boolean compareActualAndConfirmNewPassword = bCryptPasswordEncoder.matches(confirmNewPassword, user.getPassword());


        boolean compareNewPasswordAndConfirmNewPassword = newPassword.equals(confirmNewPassword);

        if ((oldPassword.equals("")) || (newPassword.equals("")) || (confirmNewPassword.equals(""))) {
            System.out.println("jakies polle puste");
            return false;
        }

        if (!compareActualAndOldPassword) {
            System.out.println("stare haslo bledne");
            return false;
        } else if (compareActualAndNewPassword || compareActualAndConfirmNewPassword) {
            System.out.println("Stare ok ale nowe lub confirm jak stare");
            return false;
        }

        if (!compareNewPasswordAndConfirmNewPassword) {
            System.out.println("Stare ok ale 2 rozne");
            return false;
        }

        user.setPassword(bCryptPasswordEncoder.encode(newPassword));
        edit(user);
        return true;

    }

    public UserSlimNoPassword convertUserToUserSlimNoPassword(User user) {
        return userMapper.userToUserSlimNoPassword(user);
    }

    public UserIdAndPassword convertUserToUserIdAndPassword(User user) {
        return userMapper.userToUserIdAndPassword(user);
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
