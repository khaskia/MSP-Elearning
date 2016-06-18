/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import libs.databaseModel;

/**
 *
 * @author Muhammed
 */
public class StaffMoled {
    private int StaffID;
    private String fname;
    private String lname;
    private String job;
    private String email;
    private String password;
    private String au;
    
    
    public ResultSet login(String email , String password ) throws SQLException, ClassNotFoundException{
        ResultSet result =null;
        databaseModel dbmode = databaseModel.getConnection();
        PreparedStatement st = dbmode.statement("select * from staff where email = ? and password =? ");
        st.setString(1, email);
        st.setString(2, password);
        result = dbmode.fetchData(st);
        return result;
    }
    
    public int getStaffID() {
        return StaffID;
    }

    public void setStaffID(int StaffID) {
        this.StaffID = StaffID;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAu() {
        return au;
    }

    public void setAu(String au) {
        this.au = au;
    }
    
}
