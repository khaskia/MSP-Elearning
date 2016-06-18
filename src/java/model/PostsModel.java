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
public class PostsModel {
    private int postID;
    private String PostContent;
    private String postDate;
    private String year;
    private String dept;
    private int  WriterID;
    
    
    public static int  addcomment(String CommentContent,long commentwriter,long postId) throws SQLException, ClassNotFoundException{
        int check=0;
        long commentID = System.currentTimeMillis()%10000000 ;
        databaseModel dbmodel = databaseModel.getConnection();
        PreparedStatement st = dbmodel.statement("INSERT INTO `msp`.`comment` (`commentID`, `commentContent`, `commentDate`, `WriterID`, `postID`)"
                + " VALUES (?, ?, now(), ?, ?);");
        st.setLong(1, commentID);
        st.setString(2, CommentContent);
        st.setLong(3, commentwriter);
        st.setLong(4, postId);
        check= dbmodel.makeRecord(st);
        st.close();
        
        return check;
    }
    
    
     public static int  addpost(String postContent,String year,String dept,long writer) throws SQLException, ClassNotFoundException{
        int check=0;
        long postID = System.currentTimeMillis()%100000000 ;
        databaseModel dbmodel = databaseModel.getConnection();
        PreparedStatement st = dbmodel.statement("INSERT INTO `msp`.`post` (`postID`, `postContent`, `postDate`, `year`, `dept`, `WriterID`)"
                + " VALUES (?,?, now(), ?, ?, ?);");
        st.setLong(1, postID);
        st.setString(2, postContent);
        st.setString(3, year);
        st.setString(4, dept);
        st.setLong(5, writer);
        check= dbmodel.makeRecord(st);
        st.close();
        
        return check;
    }
    public static ResultSet getcomments(int postID) throws SQLException, ClassNotFoundException {
        ResultSet result = null;
        databaseModel dbmodel = databaseModel.getConnection();
        PreparedStatement st = dbmodel.statement("SELECT * FROM  commentview where postID='"+postID+"' order by commentDate ASC");
        result = dbmodel.fetchData(st);

        return result;
    }
    
    
    public static ResultSet getPosts(String dept,String year) throws SQLException, ClassNotFoundException {
        ResultSet result = null;
        databaseModel dbmodel = databaseModel.getConnection();
        PreparedStatement st = dbmodel.statement("SELECT * FROM postview where year = ? and dept = ? order by postDate DESC");
        st.setString(1, year);
        st.setString(2, dept);
        result = dbmodel.fetchData(st);

        return result;
    }
    
    public int getPostID() {
        return postID;
    }

    public void setPostID(int postID) {
        this.postID = postID;
    }

    public String getPostContent() {
        return PostContent;
    }

    public void setPostContent(String PostContent) {
        this.PostContent = PostContent;
    }

    public String getPostDate() {
        return postDate;
    }

    public void setPostDate(String postDate) {
        this.postDate = postDate;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public String getDept() {
        return dept;
    }

    public void setDept(String dept) {
        this.dept = dept;
    }

    public int getWriterID() {
        return WriterID;
    }

    public void setWriterID(int WriterID) {
        this.WriterID = WriterID;
    }

    
    
    
}
