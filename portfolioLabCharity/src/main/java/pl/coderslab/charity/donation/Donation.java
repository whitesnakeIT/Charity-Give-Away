package pl.coderslab.charity.donation;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.hibernate.Hibernate;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;
import org.springframework.format.annotation.DateTimeFormat;
import pl.coderslab.charity.category.Category;
import pl.coderslab.charity.institution.Institution;

import javax.persistence.*;
import javax.validation.constraints.*;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;
import java.util.Objects;

@Entity
@Table(name = Donation.TABLE_NAME)
@Getter
@Setter
@ToString
public class Donation {

    public static final String TABLE_NAME = "donations";
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Positive
    @Max(10)
    private Integer quantity;

    @NotNull
    @ManyToMany
    @OnDelete(action = OnDeleteAction.CASCADE)
    @JoinTable(
            name = "donation_category",
            joinColumns = {@JoinColumn(name = "donation_id")},
            inverseJoinColumns = {@JoinColumn(name = "category_id")}
    )
    @ToString.Exclude
    private List<Category> categories;

    @NotNull
    @ManyToOne
    @JoinColumn(name = "institution_id")
    private Institution institution;

    @NotBlank
    @Size(min = 5, max = 40)
    private String street;

    @NotBlank
    @Size(min = 3, max = 40)
    private String city;
    @Pattern(regexp = "\\d{2}-\\d{3}")
    @NotEmpty
    private String zipCode;

    @Pattern(regexp = "\\d{9}")
    @NotEmpty
    private String phone;

    @NotNull
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @Future
    private LocalDate pickUpDate;
    @NotNull
    @DateTimeFormat(pattern = "HH:mm")
    @Future
    private LocalTime pickUpTime;

    @Size(max = 150)
    private String pickUpComment;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || Hibernate.getClass(this) != Hibernate.getClass(o)) return false;
        Donation donation = (Donation) o;
        return id != null && Objects.equals(id, donation.id);
    }

    @Override
    public int hashCode() {
        return getClass().hashCode();
    }
}
