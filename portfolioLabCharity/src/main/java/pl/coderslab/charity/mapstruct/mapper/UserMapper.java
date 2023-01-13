package pl.coderslab.charity.mapstruct.mapper;

import org.mapstruct.Mapper;
import pl.coderslab.charity.mapstruct.dto.user.UserIdAndPassword;
import pl.coderslab.charity.mapstruct.dto.user.UserSlimNoPassword;
import pl.coderslab.charity.user.User;

@Mapper(componentModel = "spring")
public interface UserMapper {

    UserSlimNoPassword userToUserSlimNoPassword(User user);

    User userSlimNoPasswordToUser(UserSlimNoPassword userSlimNoPassword);

    User userIdAndPasswordToUser(UserIdAndPassword userIdAndPassword);

    UserIdAndPassword userToUserIdAndPassword(User user);

//    @BeanMapping(nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE)
//    User updateUserFromUserIdAndPassword(UserIdAndPassword userIdAndPassword, @MappingTarget User user);
}
