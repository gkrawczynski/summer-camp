package pl.coderslab.entity;

import lombok.Data;
import lombok.ToString;
import org.hibernate.validator.constraints.Email;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;

@Entity
@Data
@ToString
@Table(name = "applicants")
public class Applicant {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @Column(length = 100)
    private String password;
    @Email
    private String email;
    @Column(columnDefinition = "VARCHAR(100)")
    private String firstName;
    @Column(columnDefinition = "VARCHAR(100)")
    private String lastName;
    @Column(length = 100)
    private String street;
    @Column(length = 6)
    private String streetNumber;
    @Column(length = 6)
    private String postalCode;
    @DateTimeFormat(pattern = "mm-dd-yyyy")
    private LocalDate dateOfBirth;          //<dependency> org.hibernate </dependency
    private String phoneNumber;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "application_id")
    private Application application;


    @OneToOne
    @JoinColumn(name = "program_id")
    private Program program;
    @OneToOne
    @JoinColumn(name = "city_id")
    private City city;
    @OneToOne
    @JoinColumn(name = "country_id")
    private Country country;
    @OneToOne
    @JoinColumn(name = "camp_id")
    private Camp camp;
    @OneToMany
    @JoinColumn(name = "skill_id")
    private List<Skill> skills;

}
