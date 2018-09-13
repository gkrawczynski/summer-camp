package pl.coderslab.entity;

import lombok.Data;
import lombok.ToString;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Data
@ToString
@Table(name = "countries")
public class Country {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String name;

//    @OneToMany(mappedBy = "country", cascade = CascadeType.MERGE)
    @OneToMany(cascade = CascadeType.ALL)
    @JoinColumn(name = "country_id")
    private List<City> city = new ArrayList<>();

}
