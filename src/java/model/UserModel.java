/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.*;
import libs.databaseModel;

/**
 *
 * @author Muhammed
 */
public class UserModel {
    private long id;
    private String fname;
    private String lname;
    private String email;
    private String password;
    private String deptid;
    private String yearid;
    
    
    
    public long getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public String getDeptid() {
        return deptid;
    }

    public void setDeptid(String deptid) {
        this.deptid = deptid;
    }

    public String getYearid() {
        return yearid;
    }

    public void setYearid(String yearid) {
        this.yearid = yearid;
    }
    
    public int saveuser() throws SQLException, ClassNotFoundException{
        int check=0;
        this.id=System.currentTimeMillis()%100000000 ;
        databaseModel dbmodel = databaseModel.getConnection();
        PreparedStatement st = dbmodel.statement("insert into students values(?,?,?,?,?,?,?)");
        st.setLong(1, id);
        st.setString(2, fname);
        st.setString(3, lname);
        st.setString(4, email);
        st.setString(5, password);
        st.setString(6, yearid);
        st.setString(7, deptid);
        check= dbmodel.makeRecord(st);
        st.close();
        
        return check;
    }
    
    
    public int Updateuser(long id) throws SQLException, ClassNotFoundException{
        int check=0;
        databaseModel dbmodel = databaseModel.getConnection();
        PreparedStatement st = dbmodel.statement("update students set studentID=? ,fname=?,lname=?,email=?,password=?,yearID=?,deptID=?   where studentID="+id);
        st.setLong(1, id);
        st.setString(2, fname);
        st.setString(3, lname);
        st.setString(4, email);
        st.setString(5, password);
        st.setString(6, yearid);
        st.setString(7, deptid);
        check= dbmodel.makeRecord(st);
        st.close();
        
        return check;
    }
    public int delete(long id) throws SQLException, ClassNotFoundException{
        int check=0;
        databaseModel dbmodel = databaseModel.getConnection();
        PreparedStatement st = dbmodel.statement("delete from students  where studentID="+id);
        check= dbmodel.makeRecord(st);
        st.close();
        
        return check;
    }
    
    
    
    public ResultSet login(String email , String password ) throws SQLException, ClassNotFoundException{
        ResultSet result =null;
        databaseModel dbmode = databaseModel.getConnection();
        PreparedStatement st = dbmode.statement("select * from students where email = ? and password =? ");
        st.setString(1, email);
        st.setString(2, password);
        result = dbmode.fetchData(st);
        return result;
    }
    public ResultSet getDepartment(String deptid) throws SQLException, ClassNotFoundException{
        ResultSet department = null;
        databaseModel dbmode = databaseModel.getConnection();
        PreparedStatement st = dbmode.statement("select deptName from departments where deptID=?");
        st.setString(1, deptid);
         department = dbmode.fetchData(st);
        return department;
    }
    
    public ResultSet getStudentData() throws SQLException, ClassNotFoundException{
        ResultSet students = null;
        databaseModel dbmode = databaseModel.getConnection();
        PreparedStatement st = dbmode.statement("select * from students where email is not null");
         students = dbmode.fetchData(st);
        return students;
    }
    public ResultSet getStudentDataForUpdate(int id) throws SQLException, ClassNotFoundException{
        ResultSet students = null;
        databaseModel dbmode = databaseModel.getConnection();
        PreparedStatement st = dbmode.statement("select * from students where studentID="+id);
         students = dbmode.fetchData(st);
        return students;
    }
    
    
}
