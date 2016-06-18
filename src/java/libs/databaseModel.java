package libs;

import java.sql.*;
import java.sql.DriverManager;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Muhammed
 */
public class databaseModel {

    private static Connection con = null;
    private static final databaseModel instance = new databaseModel();
    private final static String username = "root";
    private final static String password = "1994";

    private databaseModel() {
    }

    public static databaseModel getConnection() throws SQLException, ClassNotFoundException {
        if (con == null) {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/msp?useUnicode=yes&characterEncoding=UTF-8", username, password);
        }
        return instance;
    }

    /**
     * <p>
     * A method to select data from databaseModel.</p>
     *
     * @param queryStatement
     * @return resultset - fetched data .
     */
    public ResultSet fetchData(PreparedStatement queryStatement) {
        ResultSet data = null;
        try {
            //Statement queryStatement = databaseModel.con.createStatement();
            data = queryStatement.executeQuery();
           
        } catch (SQLException ex) {
            Logger.getLogger(databaseModel.class.getName()).log(Level.SEVERE, null, ex);
        }
        return data;
    }

    /**
     * <p>
     * A method to make update, insert, delete.</p>
     *
     * @param queryStatement
     * @return int - 1 if executed else 0 .
     */
    public int makeRecord(PreparedStatement queryStatement) {
        int result = 0;
        try {
           // PreparedStatement queryStatement = databaseModel.con.prepareStatement(sql);
            result = queryStatement.executeUpdate();
            
        } catch (SQLException ex) {
            Logger.getLogger(databaseModel.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;

    }
    
    /**
     *
     * @param sql query statement
     * @return
     */
    public PreparedStatement statement(String sql){
        PreparedStatement resultStatement=null;
        try {
             resultStatement = databaseModel.con.prepareStatement(sql);
            
        } catch (SQLException ex) {
            Logger.getLogger(databaseModel.class.getName()).log(Level.SEVERE, null, ex);
        }
        return resultStatement;
        
    }
    public void autoCommit(boolean status){
        try {
            databaseModel.con.setAutoCommit(status);
        } catch (SQLException ex) {
            Logger.getLogger(databaseModel.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void Commit(){
        try {
            databaseModel.con.commit();
        } catch (SQLException ex) {
            Logger.getLogger(databaseModel.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void rollback(){
        try {
            databaseModel.con.rollback();
        } catch (SQLException ex) {
            Logger.getLogger(databaseModel.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    private void closeConnection(){
        try {
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(databaseModel.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
