package pl.coderslab.charity.mapstruct.dto.user;

import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

@Data
public class UserIdAndPassword {
    private final Long id;
    @NotEmpty
    @NotBlank
    @Size(min = 2, max = 70)
    private final String password;
}