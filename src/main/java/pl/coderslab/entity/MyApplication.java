package pl.coderslab.entity;

import lombok.Data;
import lombok.ToString;

import javax.persistence.*;

@Entity
@Data
@ToString
@Table(name = "applications")
public class MyApplication {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String name;

    @ManyToOne
    private Applicant applicant;
    @ManyToOne
    private Program program;
    @ManyToOne
    private Camp camp;

    public void setName(String name) {
        this.name = program.getName();
    }
}
