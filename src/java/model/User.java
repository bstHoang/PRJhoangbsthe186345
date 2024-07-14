/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author admin
 */
public class User {
    private int Id , Role;
    private String PhoneNumber,Name,Gender,DOB,UserName,Password;

    public User() {
    }

    public User(int Role, String PhoneNumber, String Name, String Gender, String DOB, String UserName, String Password) {
        this.Role = Role;
        this.PhoneNumber = PhoneNumber;
        this.Name = Name;
        this.Gender = Gender;
        this.DOB = DOB;
        this.UserName = UserName;
        this.Password = Password;
    }

    
    public User(int Id, int Role, String PhoneNumber, String Name, String Gender, String DOB, String UserName, String Password) {
        this.Id = Id;
        this.Role = Role;
        this.PhoneNumber = PhoneNumber;
        this.Name = Name;
        this.Gender = Gender;
        this.DOB = DOB;
        this.UserName = UserName;
        this.Password = Password;
    }

    public int getId() {
        return Id;
    }

    public void setId(int Id) {
        this.Id = Id;
    }

    public int getRole() {
        return Role;
    }

    public void setRole(int Role) {
        this.Role = Role;
    }

    public String getPhoneNumber() {
        return PhoneNumber;
    }

    public void setPhoneNumber(String PhoneNumber) {
        this.PhoneNumber = PhoneNumber;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getGender() {
        return Gender;
    }

    public void setGender(String Gender) {
        this.Gender = Gender;
    }

    public String getDOB() {
        return DOB;
    }

    public void setDOB(String DOB) {
        this.DOB = DOB;
    }

    public String getUserName() {
        return UserName;
    }

    public void setUserName(String UserName) {
        this.UserName = UserName;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    
}
