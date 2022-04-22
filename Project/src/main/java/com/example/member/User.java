package com.example.member;

import java.time.Instant;

public class User {

    private int user_id;
    private String first_name;
    private String last_name;
    private String username;
    private String password;
    private String email;
    private String phone_number;
    private String address;
    private Instant createdOn;
    private Instant updateOn;

    public User(String first_name, String last_name, String username, String password, String email, String phone_number, String address) {
    }

    public User(int user_id, String first_name, String last_name, String username, String password, String email, String phone_number, String address,  Instant createdOn, Instant updateOn) {
        this.user_id = user_id;
        this.first_name = first_name;
        this.last_name = last_name;
        this.username = username;
        this.password = password;
        this.email = email;
        this.phone_number = phone_number;
        this.address = address;
        this.createdOn = createdOn;
        this.updateOn = updateOn;
    }

    public User(int user_id, String first_name, String last_name, String username, String password, String email, String phone_number, String address) {
        this.user_id = user_id;
        this.first_name = first_name;
        this.last_name = last_name;
        this.username = username;
        this.password = password;
        this.email = email;
        this.phone_number = phone_number;
        this.address = address;
    }

    public int getUser_Id() {
        return user_id;
    }

    public void setUser_Id(int user_id) {
        this.user_id = user_id;
    }

    public String getFirst_Name() {
        return first_name;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public String getLast_Name() {
        return last_name;
    }

    public void setLast_name(String first_name) {
        this.first_name = last_name;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone_Number() {
        return phone_number;
    }

    public void setPhone_Number(String phone_number) {
        this.phone_number = phone_number;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Instant getCreatedOn() {
        return createdOn;
    }

    public void setCreatedOn(Instant createdOn) {
        this.createdOn = createdOn;
    }

    public Instant getUpdateOn() {
        return updateOn;
    }

    public void setUpdateOn(Instant updateOn) {
        this.updateOn = updateOn;
    }

}
