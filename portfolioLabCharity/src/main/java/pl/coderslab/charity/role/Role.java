package pl.coderslab.charity.role;

import lombok.Getter;

import javax.persistence.*;

@Entity
@Getter
@Table(name = Role.TABLE_NAME)
public class Role {

    public static final String TABLE_NAME = "roles";
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

}
