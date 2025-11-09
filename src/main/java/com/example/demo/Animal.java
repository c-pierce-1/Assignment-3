package com.example.demo;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "animals")
public class Animal{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long animalId;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false)
    private String description; 
    private double age;
    private String animalType;
    private String imageUrl;

    public Animal(){
    }

    public Animal(Long animalId, String name, String description, double age, String animalType){
        this.animalId = animalId;
        this.name = name;
        this.description = description;
        this.age = age;
        this.animalType = animalType;
    }

    public Animal( String name, String description, double age, String animalType){
        this.name = name;
        this.description = description;
        this.age = age;
        this.animalType = animalType;
    }

    public Long getAnimalId(){
        return animalId;
    }

    public void setAnimalId(Long id){
        this.animalId = id;
    }

    public String getName(){
        return name;
    }

    public void setName(String name){
        this.name = name;
    }

    public String getDescription(){
        return description;
    }

    public void setDescription(String description){
        this.description = description;
    }

    public double getAge(){
        return age;
    }

    public void setAge(double age){
        this.age = age;
    }

    public String getAnimalType(){
        return animalType;
    }

    public String getImageUrl(){
        return imageUrl;
    }

    public void setImageUrl(String imageUrl){
        this.imageUrl = imageUrl;
    }

    public void setAnimalType(String animalType){
        this.animalType = animalType;
    }
}