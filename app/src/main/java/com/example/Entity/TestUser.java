package com.example.Entity;

import com.google.gson.annotations.SerializedName;

public class TestUser {

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirstName() {
        return FirstName;
    }

    public void setFirstName(String firstName) {
        FirstName = firstName;
    }

    public String getLastName() {
        return LastName;
    }

    public void setLastName(String lastName) {
        LastName = lastName;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String email) {
        Email = email;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String password) {
        Password = password;
    }

    public TestUser(int id, String firstName, String lastName, String email, String password) {
        this.id = id;
        FirstName = firstName;
        LastName = lastName;
        Email = email;
        Password = password;
    }

    @SerializedName("id")
    private int id;
    @SerializedName("FirstName")
    private  String FirstName;
    @SerializedName("Lastname")
    private String LastName;
    @SerializedName("Email")
    private String Email;
    @SerializedName("Password")
    private String Password;


}
