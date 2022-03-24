package com.troyatech.dizi_ayraci.entities;


//{
//    "id":1,
//     "diziName":"Attack on Titan",
//
//        }

import javax.persistence.*;

@Entity
@Table(name="dizi", schema = "dizia")
public class Dizi {
    @Id
    @Column(name="id")
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private int id;
    @Column(name="diziName")
    private String diziName;

    public  Dizi(){}

    public Dizi(int id, String diziName) {
        this.id = id;
        this.diziName = diziName;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDiziName() {
        return diziName;
    }

    public void setDiziName(String diziName) {
        this.diziName = diziName;
    }
}
