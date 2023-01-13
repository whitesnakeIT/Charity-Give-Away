package pl.coderslab.charity.mapstruct.dto.user;

import lombok.Data;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;

@Data
public class UserSlimNoPassword{
    private final Long id;
    private final String username;
    @Email
    @NotEmpty
    @NotBlank
    private final String email;
}