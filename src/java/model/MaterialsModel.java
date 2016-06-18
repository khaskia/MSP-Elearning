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
public class MaterialsModel {

    private int matID;
    private String materialName;
    private String description;
    private int staffID;
    private String hours;
    private String year;
    private String deptID;
    private String term;
    private String reference;
    private String photo;

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }
    

    public static ResultSet getSlides(int id) throws SQLException, ClassNotFoundException {
        ResultSet result = null;
        databaseModel dbmodel = databaseModel.getConnection();
        PreparedStatement st = dbmodel.statement("SELECT * FROM msp.materialsslides where matid ="+id);
        result = dbmodel.fetchData(st);

        return result;
    }

    public static ResultSet getDetails(String name) throws SQLException, ClassNotFoundException {
        ResultSet result = null;
        databaseModel dbmodel = databaseModel.getConnection();
        PreparedStatement st = dbmodel.statement("SELECT * FROM msp.details where materialName=?");
        st.setString(1, name);
        result = dbmodel.fetchData(st);

        return result;
    }

    public static ResultSet getMaterials(String dept, String term,String year) throws SQLException, ClassNotFoundException {
        ResultSet result = null;
        databaseModel dbmodel = databaseModel.getConnection();
        PreparedStatement st = dbmodel.statement("SELECT * FROM msp.materials where deptID LIKE"
                + " '%" + dept + "%' and term='" + term +"'and year = "+year);
        result = dbmodel.fetchData(st);

        return result;
    }

    public int getMatID() {
        return matID;
    }

    public void setMatID(int matID) {
        this.matID = matID;
    }

    public String getMaterialName() {
        return materialName;
    }

    public void setMaterialName(String materialName) {
        this.materialName = materialName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getStaffID() {
        return staffID;
    }

    public void setStaffID(int staffID) {
        this.staffID = staffID;
    }

    public String getHours() {
        return hours;
    }

    public void setHours(String hours) {
        this.hours = hours;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public String getDeptID() {
        return deptID;
    }

    public void setDeptID(String deptID) {
        this.deptID = deptID;
    }

    public String getTerm() {
        return term;
    }

    public void setTerm(String term) {
        this.term = term;
    }

    public String getReference() {
        return reference;
    }

    public void setReference(String reference) {
        this.reference = reference;
    }

}
