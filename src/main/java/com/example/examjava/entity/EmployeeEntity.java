package com.example.examjava.entity;

import javax.persistence.*;

@Entity
@Table(name = "employee")
public class EmployeeEntity {

    public Integer getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getName() {
        return name;
    }
    public void setName(String fullName) {
        this.name = fullName;
    }
    public String getBirthday() {
        return birthday;
    }
    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }
    public String getAddress() {
        return address;
    }
    public void setAddress(String address) {
        this.address = address;
    }
    public String getPosition() {
        return position;
    }
    public void setPosition(String position) {
        this.position = position;
    }
    public String getDepartment() {
        return department;
    }
    public void setDepartment(String department) {
        this.department = department;
    }



    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String name;

    private String birthday;

    private String address;

    private String position;

    private String department;

    public EmployeeEntity(Integer id, String name, String birthday, String address, String position, String department) {
        this.id = id;
        this.name = name;
        this.birthday = birthday;
        this.address = address;
        this.position = position;
        this.department = department;
    }

    public EmployeeEntity( String name, String birthday, String address, String position, String department) {
        this.name = name;
        this.birthday = birthday;
        this.address = address;
        this.position = position;
        this.department = department;
    }

    public EmployeeEntity(){

    }
}
