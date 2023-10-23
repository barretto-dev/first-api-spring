package com.example.firstApi.models;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.io.Serial;
import java.io.Serializable;
import java.time.LocalDate;
import java.util.UUID;

@Entity
@Table(name = "users")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class User implements Serializable {

    @Serial
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private UUID id;

    @Column(nullable = false)
    @NotBlank
    private String fisrtName;

    @Column(nullable = false)
    @NotBlank
    private String lastName;

    @Column(nullable = false, unique = true)
    @NotBlank
    private String email;

    @Column(nullable = false)
    @NotBlank
    private LocalDate birthdate;

    @OneToOne
    @JoinColumn(name = "address_id")
    private Address address;


}
