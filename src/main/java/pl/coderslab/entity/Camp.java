package pl.coderslab.entity;

import lombok.Data;
import lombok.ToString;
import org.hibernate.validator.constraints.Email;

import javax.persistence.*;
import javax.validation.constraints.Min;
import java.util.List;

@Entity
@Data
@ToString
@Table(name = "camps")
public class Camp {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String name;
    @Email
    private String email;
    @Column(length = 100)
    private String street;
    @Column(length = 100)
    private String postalCode;
    @Column(length = 100)
    private String state;
    private String phoneNumber;
    @Column(columnDefinition = "TEXT")
    private String description;
    @Min(value = 50)
    private Integer size;

    @OneToOne
    @JoinColumn(name = "campType_id")
    private CampType campType;
    @OneToOne
    @JoinColumn(name = "city_id")
    private City city;
    @OneToOne
    @JoinColumn(name = "country_id")
    private Country country;
    @OneToMany
    @JoinColumn(name = "programs_id")
    private List<Program> program;

}





